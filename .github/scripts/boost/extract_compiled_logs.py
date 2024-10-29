import os
import collections
import argparse

def get_module_from_path(path: str) -> str:
    if path.startswith("bin.v2"):
        return path.split("/")[2]
    elif path.startswith("../bin.v2"):
        return path.split("/")[3]
    elif path.startswith("<p../bin.v2"):
        return path.split("/")[3]
    else:
        raise ValueError(f"Unexpected path: {path}")


def process_logs(log_file: str) -> None:
    reading_init_lines = True

    compiled_module_counts = collections.defaultdict(lambda: collections.defaultdict(int))
    passed_tests = collections.defaultdict(int)
    failed_commands = collections.defaultdict(lambda: collections.defaultdict(int))
    skipped_commands = collections.defaultdict(lambda: collections.defaultdict(int))

    with open(log_file, 'r', encoding="utf8") as file:
        for line in file:
            # Skip the initial lines that are not part of output of any unittest
            if reading_init_lines:
                if line.startswith("...updating ") and line.rstrip().endswith("targets..."):
                    reading_init_lines = False                        
                continue

            if line.startswith("common.copy"):
                continue

            if line.startswith("link.mklink"):
                continue
            
            if line.startswith("...on ") and line.rstrip().endswith("target..."):
                continue

            if line.startswith("gcc."):
                command, path = line.split(" ", maxsplit=1)
                module = get_module_from_path(path)
                compiled_module_counts[module][command] += 1

            if line.startswith("**passed**"):
                _, path = line.split(" ", maxsplit=2)
                module = get_module_from_path(path)
                passed_tests[module] += 1

            if line.startswith("...failed") and not line.startswith("...failed updating"):
                _, command, path = line.split(" ", maxsplit=2)
                module = get_module_from_path(path)
                failed_commands[module][command] += 1

            if line.startswith("...skipped") and not line.startswith("...skipped updating"):
                _, path, _ = line.split(" ", maxsplit=2)
                module = get_module_from_path(path)
                skipped_commands[module][command] += 1

            if line.startswith("...updated ") and line.rstrip().endswith("targets..."):
                break

            # print(line, end="")

    print(f"GCC commands per module {len(compiled_module_counts.keys())}:")
    for module in sorted(compiled_module_counts.keys()):
        print(f"{module}: {dict(compiled_module_counts[module])}")
    print()
    print(f"Passed tests per module {len(passed_tests.keys())}:")
    for module in sorted(passed_tests.keys()):
        print(f"{module}: {passed_tests[module]}")
    print()
    print(f"Failed commands per module {len(failed_commands.keys())}:")
    for module in sorted(failed_commands.keys()):
        print(f"{module}: {dict(failed_commands[module])}")
    print()
    print(f"Skipped commands per module {len(skipped_commands.keys())}:")
    for module in sorted(skipped_commands.keys()):
        print(f"{module}: {dict(skipped_commands[module])}")

    for _ in range(3):
        print()
        
    commands = set()
    for d in failed_commands.values():
        commands = commands.union(set(d.keys()))
    for d in skipped_commands.values():
        commands = commands.union(set(d.keys()))
    for d in compiled_module_counts.values():
        commands = commands.union(set(d.keys()))
    
    print(commands)

    for _ in range(3):
        print()

    def compare_keys(dict1, name1, dict2, name2) -> None:
        keys1 = set(dict1.keys())
        keys2 = set(dict2.keys())
        print(f"{name1} - {name2}: {sorted(keys1 - keys2)}")
        print(f"{name2} - {name1}: {sorted(keys2 - keys1)}")
        print()

    compare_keys(compiled_module_counts, "Compiled", passed_tests, "Passed")
    compare_keys(compiled_module_counts, "Compiled", failed_commands, "Failed")
    compare_keys(passed_tests, "Passed", failed_commands, "Failed")
    compare_keys(failed_commands, "Failed", skipped_commands, "Skipped")


def main() -> None:
    parser = argparse.ArgumentParser(description="Aggregate test results from log files")
    parser.add_argument("--log_file", required=True, type=str, help="Path to the log file")
    args = parser.parse_args()

    assert os.path.isfile(args.log_file)
    process_logs(args.log_file)


if __name__ == "__main__":
    main()
