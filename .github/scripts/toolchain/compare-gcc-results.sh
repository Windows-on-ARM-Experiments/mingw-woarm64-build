#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

BASELINE_TAG=$1
TEST_TAG=$2
BASELINE_PATH=$ARTIFACT_PATH/gcc-tests-$BASELINE_TAG
TEST_PATH=$ARTIFACT_PATH/gcc-tests-$TEST_TAG
RESULTS_PATH=$ARTIFACT_PATH/gcc-tests-results

mkdir -p $RESULTS_PATH

echo "::group::Compare GCC tests results"
    for TEST_FILE in $TEST_PATH/*.sum; do
        BASELINE_FIILE=$BASELINE_PATH/`basename $TEST_FILE`
        $SOURCE_PATH/$GCC_VERSION/contrib/compare_tests $BASELINE_FIILE $TEST_FILE > \
          $RESULTS_PATH/`basename $TEST_FILE .sum`.diff && true
    done
echo "::endgroup::"

echo 'Success!'
