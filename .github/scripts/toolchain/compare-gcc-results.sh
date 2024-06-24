#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

BASELINE_PATH=$1
CHANGES_PATH=$2
RESULTS_PATH=$3

mkdir -p $RESULTS_PATH

echo "::group::Compare GCC tests results"
    for CHANGES_FILE in $CHANGES_PATH/*.sum; do
        FILE=`basename $CHANGES_FILE`
        BASELINE_FILE=$BASELINE_PATH/$FILE
        RESULT_FILE=${FILE%.sum}.diff
        $SOURCE_PATH/gcc/contrib/compare_tests $BASELINE_FILE $CHANGES_FILE > \
          $RESULTS_PATH/$RESULT_FILE && true
    done
echo "::endgroup::"

echo "::group::Create GCC tests results summary"
    rm -rf $RESULTS_PATH/summary.md
    SUMMARY_FILE=$RESULTS_PATH/summary.md
    for RESULT_FILE in $RESULTS_PATH/*.diff; do
        echo "### Test results for \`$(basename $RESULT_FILE)\`" >> $SUMMARY_FILE
        echo "" >> $SUMMARY_FILE
        echo "\`\`\`" >> $SUMMARY_FILE
        cat $RESULT_FILE >> $SUMMARY_FILE
        echo "\`\`\`" >> $SUMMARY_FILE
        echo "" >> $SUMMARY_FILE
    done
echo 'Success!'
