import os
import glob
import collections
import dataclasses
import argparse


# Tests which finished with one of these results are considered as failure:
#   FAIL = unexpected failures
#   XPASS = unexpected successes
#   UNRESOLVED = unresolved testcases
# Beside those, tests can also result in the following pass results:
#   PASS = expected passes
#   XFAIL = expected failures
#   UNSUPPORTED = unsupported tests
FAIL_LOG_TYPES = ["FAIL", "XPASS", "UNRESOLVED"]
PASS_LOG_TYPES = ["PASS", "XFAIL", "UNSUPPORTED"]

LOG_MESSAGES_TYPE = dict[str, list[list[str]]]


def read_logs(log_dir: str) -> LOG_MESSAGES_TYPE:
    """Parses log files into individual log messages

    Warning: This function correctly parses lines with test result tokens (like FAIL:) into
    individual messages but other log lines might be assigned to the wrong message. It is enough for
    the current purpose of this script as it uses only line with tokens but it might need to be
    improved for other use cases. For more details, see
    https://github.com/Windows-on-ARM-Experiments/mingw-woarm64-build/pull/184
    """
    log_messages = collections.defaultdict(list)
    for log_file in glob.glob(os.path.join(log_dir, "*.log")):
        print(f"Reading {log_file} ...")
        reading_init_lines = True

        with open(log_file, 'r', encoding="utf8") as file:            
            log_paragraph = []
            for line in file:
                # Skip the initial lines that are not part of output of any unittest
                if reading_init_lines:
                    if line.startswith("Running ") and line.rstrip().endswith(".exp ..."):
                        reading_init_lines = False                        
                    continue

                log_paragraph.append(line)

                log_type_candidate = line.split(":")[0]
                if log_type_candidate in FAIL_LOG_TYPES:
                    # Store log messages from tests that failed
                    log_messages[log_type_candidate].append(log_paragraph)
                    log_paragraph = []
                elif log_type_candidate in PASS_LOG_TYPES:
                    # Ignore log messages from tests that passed
                    log_paragraph = []

    print("Finished reading all log files.")
    print()
    print("Number of found tests for each result type:")
    for log_type, messages in log_messages.items():
        print(f"  {log_type: <12} {len(messages)}")
    print()

    return log_messages


def print_path_structure(log_messages: LOG_MESSAGES_TYPE) -> None:
    def parse_filepath(message: list[str]) -> list[str]:
        # We parse here the last line of each log message, example:
        # FAIL: g++.dg/contracts/contracts-pre10.C   20 blank line(s) in output
        assert any(message[-1].startswith(log_type) for log_type in FAIL_LOG_TYPES)
        filepath = message[-1].split(" ")[1]
        # The path might but don't have to start with tool name split by dot
        if "." in filepath and "/" not in filepath.split(".", 1)[0]:
            tool_name, filepath = filepath.split(".", 1)
            return [tool_name] + filepath.split("/")
        return filepath.split("/")
    
    @dataclasses.dataclass
    class PathSegmentStats:
        count: int = 0
        children: dict[str, "PathSegmentStats"] = dataclasses.field(default_factory=dict)

    def print_path_segment_stats(entry: PathSegmentStats, indent: int = 0, print_limit: int = 100) -> None:
        """Prints hierarchical path segments with their occurrence counts
        
        print_limit: Print only path segments with occurrence count >= print_limit
        """
        sorted_path_stats = sorted(entry.children.items(), key=lambda x: x[1].count, reverse=True)
        for key, value in sorted_path_stats:
            if value.count < print_limit:
                print(" " * (indent + 2) + "...")
                return
            
            print(" " * indent + f"{key}: {value.count}")
            print_path_segment_stats(value, indent + 2)

    root_seg_stats = PathSegmentStats()
    for messages in log_messages.values():
        for message in messages:
            path_segments = parse_filepath(message)
            curr_seg_stats = root_seg_stats
            curr_seg_stats.count += 1
            for segment in path_segments:
                if segment not in curr_seg_stats.children:
                    curr_seg_stats.children[segment] = PathSegmentStats()
                curr_seg_stats = curr_seg_stats.children[segment]
                curr_seg_stats.count += 1

    print_path_segment_stats(root_seg_stats)


def main() -> None:
    parser = argparse.ArgumentParser(description="Aggregate test results from log files")
    parser.add_argument('--dir', required=True, type=str, help="Directory containing log files")
    args = parser.parse_args()

    log_messages = read_logs(args.dir)
    print_path_structure(log_messages)


if __name__ == "__main__":
    main()
