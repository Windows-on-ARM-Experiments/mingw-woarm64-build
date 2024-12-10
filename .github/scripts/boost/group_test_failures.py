import os
import collections
import argparse


def print_dict_sorted_by_values(grouping_dict: dict) -> None:
    for key, value in sorted(grouping_dict.items(), key=lambda item: item[1]):
        print(f"{value}: {key}")


def find_failed_line_index(command_output: list[str]) -> int:
    index = len(command_output) - 1
    while command_output[index].startswith("...skipped") or command_output[index].startswith("...removing"):
        index -= 1
    if command_output[index].startswith("...failed"):
        return index

    assert not any(line.startswith("...failed") for line in command_output)
    return -1


def process_one_loaded_log(command_output: list[str], passed_outputs: list[str], failed_outputs: list[str]) -> None:
    while command_output[-1] == "":
        command_output.pop()
    if command_output[0].startswith("**passed**"):
        passed_outputs.append(command_output)
    else:
        if find_failed_line_index(command_output) >= 0:
            failed_outputs.append(list(command_output))

    command_output.clear()


def process_logs(log_file: str) -> None:
    reading_init_lines = True

    failed_outputs = []
    passed_outputs = []  # TODO: There are also (failed-as-expected) results
    skipped_outputs = []
    command_output = []

    with open(log_file, 'r', encoding="utf8") as file:
        for line in file:
            line = line.rstrip()
            # Skip the initial lines that are not part of output of any unittest
            if reading_init_lines:
                if line.startswith("...updating ") and line.rstrip().endswith("targets..."):
                    reading_init_lines = False                        
                continue

            # End of the output
            if line.startswith("...updated ") and line.rstrip().endswith("targets..."):
                process_one_loaded_log(command_output, passed_outputs, failed_outputs)
                break
            
            # Progress lines (e.g. ...on 200th target...)
            if line.startswith("...on ") and line.rstrip().endswith("target..."):
                continue

            # TODO: We can 'continue' here and then we won't need to handle "...skipped" anywhere later in the code
            if line.startswith("...skipped"):
                skipped_outputs.append(line)

            COMMANDS = ["common.copy", "common.mkdir", "link.mklink",
                        "gcc.compile.c", "gcc.compile.c++", "gcc.compile.asm", "gcc.link", "gcc.link.dll", "gcc.archive",
                        "capture-output", "testing.capture-output",
                        "quickbook-testing.process-quickbook", "quickbook-testing.process-quickbook-html",
                        "**passed**"]
            if any(line.startswith(command) for command in COMMANDS):
                if len(command_output) == 0:
                    print("Processing first command!")
                    command_output.append(line)
                    continue

                process_one_loaded_log(command_output, passed_outputs, failed_outputs)

            command_output.append(line)

    print(f"Found {len(failed_outputs)} failed, {len(skipped_outputs)} skipped and {len(passed_outputs)} passed logs")
    print()

    command_grouping = collections.defaultdict(int)
    for output in failed_outputs:
        command_grouping[output[0].strip().split(" ")[0]] += 1
    print_dict_sorted_by_values(command_grouping)
    input()

    module_grouping = collections.defaultdict(int)
    for output in failed_outputs:
        command_path = output[0].strip().split(" ")[1]
        
        group = command_path.split("/")[2]
        module = command_path.split("/")[3]
        module_grouping[f"group: {group}"] += 1
        module_grouping[module] += 1
    print(f"Found error logs for {len(module_grouping) - 2} modules")
    print_dict_sorted_by_values(module_grouping)
    input()

    grouping = collections.defaultdict(int)
    for output in failed_outputs:
        error_line_index = find_failed_line_index(output) - 1
        assert error_line_index >= 0

        command = output[0].strip().split(" ")[0]

        # e.g. <3>WSL (4090138) ERROR: UtilAcceptVsock:251: accept4 failed 110
        if output[error_line_index].startswith("<3>WSL (") and output[error_line_index].endswith(") ERROR: UtilAcceptVsock:251: accept4 failed 110"):
            grouping[f"{command}: <3>WSL ERROR: UtilAcceptVsock:251: accept4 failed 110"] += 1
            continue

        if output[0].startswith("gcc.compile"):
            for line in output:
                if "error: " in line:
                    if ".s: Fatal error: can't write " in line and "bytes to section .text of" in line and line.endswith(": 'file too big'"):
                        grouping[f"{command}: Fatal error: can't write xx bytes to section .text of ... file too big"] += 1
                    else:
                        grouping[f"{command}: {line}"] += 1
                    break
            continue
        
        if output[error_line_index] == ("====== END OUTPUT ======"):
            for i, line in enumerate(output):
                if line == "====== BEGIN OUTPUT ======":
                    break
            
            if output[i+1].startswith("<3>WSL (") and output[i+1].endswith(") ERROR: UtilAcceptVsock:251: accept4 failed 110"):
                output[i+1] = "<3>WSL (...) ERROR: UtilAcceptVsock:251: accept4 failed 110"
            log_str = "   ".join((line for line in output[i+1:error_line_index] if line != ""))
            grouping[f"{command}: {log_str}"] += 1
            # grouping[f"{command}: {output[i:error_line_index + 1]}"] += 1
            continue

        grouping[f"{command}: {output[error_line_index]}"] += 1

    print_dict_sorted_by_values(grouping)

def main() -> None:
    parser = argparse.ArgumentParser(description="Aggregate test results from log files")
    parser.add_argument("--log_file", required=True, type=str, help="Path to the log file")
    args = parser.parse_args()

    assert os.path.isfile(args.log_file)
    process_logs(args.log_file)


if __name__ == "__main__":
    main()
