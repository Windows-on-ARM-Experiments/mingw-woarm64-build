#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

DIR=$1

python3 $ROOT_PATH/.github/scripts/toolchain/group-gcc-test-failures.py \
    --dir $DIR >> $DIR/grouped-test-failures.md

cat $DIR/grouped-test-failures.md |
    $ROOT_PATH/.github/scripts/toolchain/extract-most-frequent-failures.sh 10
