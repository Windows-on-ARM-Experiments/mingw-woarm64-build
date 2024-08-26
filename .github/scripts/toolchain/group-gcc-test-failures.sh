#!/bin/bash

SCRIPT_DIRNAME=$(dirname ${BASH_SOURCE[0]})

source $SCRIPT_DIRNAME/../config.sh

TAG=$1
GITHUB_STEP_SUMMARY=$2

python3 $SCRIPT_DIRNAME/group-gcc-test-failures.py \
    --dir $ARTIFACT_PATH/gcc-tests-$TAG \
    --summary_output $GITHUB_STEP_SUMMARY >> \
    $ARTIFACT_PATH/gcc-tests-$TAG/grouped-test-failures.txt
