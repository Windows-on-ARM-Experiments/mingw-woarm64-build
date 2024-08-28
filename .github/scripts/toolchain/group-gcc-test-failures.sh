#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

TAG=$1

python3 `dirname ${BASH_SOURCE[0]}`/group-gcc-test-failures.py \
    --dir $ARTIFACT_PATH/gcc-tests-$TAG >> \
    $ARTIFACT_PATH/gcc-tests-$TAG/grouped-test-failures.md

cat $ARTIFACT_PATH/gcc-tests-$TAG/grouped-test-failures.md |
`dirname ${BASH_SOURCE[0]}`/extract-most-frequent-failures.sh >> $GITHUB_STEP_SUMMARY
