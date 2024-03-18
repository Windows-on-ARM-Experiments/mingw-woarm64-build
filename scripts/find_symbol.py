#!/usr/bin/env python3

import os
import subprocess
import sys
import getopt


def find_symbol(target, directory, symbol):
    for root, _, files in os.walk(directory):
        for file in files:
            if file.endswith(".o") or file.endswith(".a"):
                file_path = os.path.join(root, file)
                try:
                    output = subprocess.run(
                        [f"{target}-nm", "-C", "-p", "-a", file_path],
                        check=True,
                        capture_output=True
                    )
                    stdout = output.stdout.decode()
                    if symbol in stdout:
                        print(f"Symbol {symbol} found in {file_path}")
                        print("\t" + "\n\t".join(filter(lambda line: symbol in line, stdout.split("\n"))))
                except subprocess.CalledProcessError:
                    stderr = output.stderr.decode()
                    if not "file format not recognized" in stderr and len(stderr) > 0:
                      print(f"Error processing {file_path}: {output.stderr.decode()}", file=sys.stderr)


def help():
    print("find_symbol.py -t <target> -d <directory> -s <symbol>")
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
    try:
        opts, _ = getopt.getopt(argv, "ht:d:s:", ["directory=", "symbol=", "target="])
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
    find_symbol(target, directory, symbol)


if __name__ == "__main__":
    if len(sys.argv) == 1:
        help()
        sys.exit()
    main(sys.argv[1:])
