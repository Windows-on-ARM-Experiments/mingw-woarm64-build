#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

TAG=$1
SUMMARY_OUTPUT=$2

BASH_SOURCE_DIR=`dirname ${BASH_SOURCE[0]}`

python3 $BASH_SOURCE_DIR/group-gcc-test-failures.py \
    --dir $ARTIFACT_PATH/gcc-tests-$TAG >> \
    $ARTIFACT_PATH/gcc-tests-$TAG/grouped-test-failures.md

cat $ARTIFACT_PATH/gcc-tests-$TAG/grouped-test-failures.md |
    $BASH_SOURCE_DIR/extract-most-frequent-failures.sh >> $SUMMARY_OUTPUT
