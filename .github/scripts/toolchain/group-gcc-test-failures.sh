#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

TAG=$1
SUMMARY_OUTPUT=$2

python3 $ROOT_DIR/.github/scripts/toolchain/group-gcc-test-failures.py \
    --dir $ARTIFACT_PATH/gcc-tests-$TAG >> \
    $ARTIFACT_PATH/gcc-tests-$TAG/grouped-test-failures.md

cat $ARTIFACT_PATH/gcc-tests-$TAG/grouped-test-failures.md |
    $ROOT_DIR/.github/scripts/toolchain/extract-most-frequent-failures.sh 10 >> $SUMMARY_OUTPUT
