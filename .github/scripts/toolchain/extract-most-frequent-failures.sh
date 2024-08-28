#!/bin/bash

echo "## 10 directories with most test failures:"

sed -e '1,/^## Directory structure of failed tests with failure count:/d' |
    sed "s/<[^>]*>//g" |
    sed 's/-  */- /g' |
    grep -v "^[[:space:]]*$" |
    awk -F ': ' '{print $2, NR, $0}' |
    sort -nr |
    head -n 10 |
    cut -f2- -d' ' |
    # sort by line number, so that nested directories are correctly grouped
    sort -n |
    cut -f2- -d' '
