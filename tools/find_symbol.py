#!/usr/bin/env python3

import os
import getopt
import re
import subprocess
import sys


def find_symbol(target, directory, symbol, match_word, match_case, match_types):
    for root, _, files in os.walk(directory):
        for file in files:
            if file.endswith(".o") or file.endswith(".a"):
                file_path = os.path.join(root, file)
                output = subprocess.run(
                    [f"{target}-nm", "-C", "-p", "-a", file_path],
                    capture_output=True
                )

                if output.returncode != 0:
                    stderr = output.stderr.decode()
                    if not "file format not recognized" in stderr and len(stderr) > 0:
                      print(f"Error processing {file_path}: {stderr}", file=sys.stderr)
                    continue

                stdout = output.stdout.decode()
                if not filter_symbol(stdout, symbol, match_word, match_case, match_types):
                    continue

                print(f"Symbol {symbol} found in {file_path}")
                print("\t" + "\n\t".join(
                    filter(lambda line: filter_symbol(line, symbol, match_word, match_case, match_types),
                    stdout.split("\n")))
                )

def filter_symbol(line, symbol, match_word, match_case, match_types):
    if match_word:
         if not re.compile(rf'\b({symbol})\b', flags=0 if match_case else re.IGNORECASE).search(line):
             return False
    else:
        if match_case:
             if not symbol in line:
                 return False
        else:
            if not symbol.lower() in line.lower():
                 return False

    type_found = not match_types
    for type in match_types:
        if f" {type} " in line:
            type_found = True
    if not type_found:
        return False

    return True

def help():
    print("find_symbol.py -t <target> -d <directory> -s <symbol> -f <types> -w -c")
    print("\tA\tThe symbol's value is absolute, and will not be changed by further linking.")
    print("\ttT\tThe symbol is in the text (code) section.")
    print("\trR\tThe symbol is in a read only data section.")
    print("\tI\tThe symbol is an indirect reference to another symbol.")
    print("\twW\tThe symbol is a weak symbol that has not been specifically tagged as a weak object symbol.")
    print("\tU\tThe symbol is undefined.")


def main(argv):
    target = "aarch64-w64-mingw32"
    directory = "."
    symbol = ""
    match_word = False
    match_case = False
    match_types = ()
    try:
        opts, _ = getopt.getopt(argv, "ht:d:s:f:wc", ["directory=", "symbol=", "target=", "match_types=", "match_word=", "match_case="])
    except getopt.GetoptError:
        help()
        sys.exit(2)
    for opt, arg in opts:
        if opt == "-h":
            help()
            sys.exit()
        elif opt in ("-t", "--target"):
            target = arg
        elif opt in ("-d", "--directory"):
            directory = arg
        elif opt in ("-s", "--symbol"):
            symbol = arg
        elif opt in ("-w", "--match_word"):
            match_word = True
        elif opt in ("-c", "--match_case"):
            match_case = True
        elif opt in ("-f", "--match_types"):
            match_types = arg.split(",")
    find_symbol(target, directory, symbol, match_word, match_case, match_types)


if __name__ == "__main__":
    if len(sys.argv) == 1:
        help()
        sys.exit()
    main(sys.argv[1:])
