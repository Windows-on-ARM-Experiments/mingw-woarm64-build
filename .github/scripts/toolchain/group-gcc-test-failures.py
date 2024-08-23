import os
import glob
import collections
import dataclasses
import argparse


# PASS = expected passes
# FAIL = unexpected failures
# XPASS = unexpected successes
# XFAIL = expected failures
# UNRESOLVED = unresolved testcases
# UNSUPPORTED = unsupported tests
PASS_LOG_TYPES = ["PASS", "XFAIL", "UNSUPPORTED"]
FAIL_LOG_TYPES = ["FAIL", "XPASS", "UNRESOLVED"]
LOG_TYPES = PASS_LOG_TYPES + FAIL_LOG_TYPES

LOG_MESSAGES_TYPE = dict[str, list[list[str]]]


def read_logs(log_dir: str) -> LOG_MESSAGES_TYPE:
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
                for log_type in LOG_TYPES:
                    if line.startswith(log_type):
                        log_messages[log_type].append(log_paragraph)
                        log_paragraph = []
                        break

    print(f"Finished reading all log files.")
    print()
    
    total_test_count = sum(len(messages) for messages in log_messages.values())
    print(f"Found logs from {total_test_count} tests. Number of tests per result type:")
    for log_type, messages in log_messages.items():
        print(f"  {log_type: <12} {len(messages)}")
    print()

    return log_messages


def print_path_structure(log_messages: LOG_MESSAGES_TYPE) -> None:
    def parse_filepath(message: list[str]) -> list[str]:
        # We parse here the last line of each log message, example:
        # FAIL: g++.dg/contracts/contracts-pre10.C   20 blank line(s) in output"""
        assert any(message[-1].startswith(log_type) for log_type in LOG_TYPES)
        filepath = message[-1].split(" ")[1]
        # The path might or but don't have to start with tool name split by dot
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
    # We don't care about tests that are passing, remove them
    for log_type in PASS_LOG_TYPES:
        log_messages.pop(log_type)

    print_path_structure(log_messages)


if __name__ == "__main__":
    main()
