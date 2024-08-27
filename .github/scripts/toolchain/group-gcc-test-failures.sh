#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

TAG=$1
GITHUB_STEP_SUMMARY=$2

python3 `dirname ${BASH_SOURCE[0]}`/group-gcc-test-failures.py \
    --dir $ARTIFACT_PATH/gcc-tests-$TAG \
    --summary_output $GITHUB_STEP_SUMMARY >> \
    $ARTIFACT_PATH/gcc-tests-$TAG/grouped-test-failures.txt
