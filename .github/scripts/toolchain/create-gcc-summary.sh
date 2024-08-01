#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

TAG=$1

print_summary() {
    local TITLE=$1
    local EXPECTED_PASSES=$2
    local UNEXPECTED_FAILURES=$3
    local UNEXPECTED_SUCCESSES=$4
    local EXPECTED_FAILURES=$5
    local UNRESOLVED_TESTCASES=$6
    local UNSUPPORTED_TESTS=$7
    local DEJAGNU_ERRORS=$8

    TOTAL_EXPECTED=$(($EXPECTED_PASSES + $EXPECTED_FAILURES + $UNSUPPORTED_TESTS))
    TOTAL=$(($EXPECTED_PASSES + $UNEXPECTED_FAILURES + $UNEXPECTED_SUCCESSES + \
        $EXPECTED_FAILURES + $UNRESOLVED_TESTCASES + $UNSUPPORTED_TESTS + $DEJAGNU_ERRORS))
    if [[ "$TOTAL" = 0 ]]; then
        RELIABILITY_RATE="undefined"
    else
        RELIABILITY_RATE="$(($TOTAL_EXPECTED * 100 / $TOTAL))%"
    fi

    echo "### $TITLE"
    echo "| Metric                | Count                 |"
    echo "|-----------------------|-----------------------|"
    echo "| Expected passes       | $EXPECTED_PASSES      |"
    echo "| Unexpected failures   | $UNEXPECTED_FAILURES  |"
    echo "| Unexpected successes  | $UNEXPECTED_SUCCESSES |"
    echo "| Expected failures     | $EXPECTED_FAILURES    |"
    echo "| Unresolved testcases  | $UNRESOLVED_TESTCASES |"
    echo "| Unsupported tests     | $UNSUPPORTED_TESTS    |"
    echo "| DejaGnu errors        | $DEJAGNU_ERRORS       |"
    echo "| Total                 | $TOTAL                |"
    echo "| Reliability rate      | $RELIABILITY_RATE     |"
    echo
}

TOTAL_EXPECTED_PASSES=0
TOTAL_UNEXPECTED_FAILURES=0
TOTAL_UNEXPECTED_SUCCESSES=0
TOTAL_EXPECTED_FAILURES=0
TOTAL_UNRESOLVED_TESTCASES=0
TOTAL_UNSUPPORTED_TESTS=0
TOTAL_DEJAGNU_ERRORS=0

set +x # echo off
for SUM_FILE in "$ARTIFACT_PATH/gcc-tests-$TAG/"*.sum; do
    EXPECTED_PASSES=0
    UNEXPECTED_FAILURES=0
    UNEXPECTED_SUCCESSES=0
    EXPECTED_FAILURES=0
    UNRESOLVED_TESTCASES=0
    UNSUPPORTED_TESTS=0
    DEJAGNU_ERRORS=0

    while read -r LINE; do
        case "$LINE" in
            *"# of expected passes"*)
                EXPECTED_PASSES=$(($EXPECTED_PASSES + $(echo "$LINE" | awk '{print $5}')))
                ;;
            *"# of unexpected failures"*)
                UNEXPECTED_FAILURES=$(($UNEXPECTED_FAILURES + $(echo "$LINE" | awk '{print $5}')))
                ;;
            *"# of unexpected successes"*)
                UNEXPECTED_SUCCESSES=$(($UNEXPECTED_SUCCESSES + $(echo "$LINE" | awk '{print $5}')))
                ;;
            *"# of expected failures"*)
                EXPECTED_FAILURES=$(($EXPECTED_FAILURES + $(echo "$LINE" | awk '{print $5}')))
                ;;
            *"# of unresolved testcases"*)
                UNRESOLVED_TESTCASES=$(($UNRESOLVED_TESTCASES + $(echo "$LINE" | awk '{print $5}')))
                ;;
            *"# of unsupported tests"*)
                UNSUPPORTED_TESTS=$(($UNSUPPORTED_TESTS + $(echo "$LINE" | awk '{print $5}')))
                ;;
            *"# of DejaGnu errors"*)
                DEJAGNU_ERRORS=$(($DEJAGNU_ERRORS + $(echo "$LINE" | awk '{print $5}')))
                ;;
        esac
    done <"$SUM_FILE"

    print_summary "Summary for \`$(basename $SUM_FILE)\`" $EXPECTED_PASSES $UNEXPECTED_FAILURES \
        $UNEXPECTED_SUCCESSES $EXPECTED_FAILURES $UNRESOLVED_TESTCASES $UNSUPPORTED_TESTS \
        $DEJAGNU_ERRORS

    TOTAL_EXPECTED_PASSES=$(($TOTAL_EXPECTED_PASSES + $EXPECTED_PASSES))
    TOTAL_UNEXPECTED_FAILURES=$(($TOTAL_UNEXPECTED_FAILURES + $UNEXPECTED_FAILURES))
    TOTAL_UNEXPECTED_SUCCESSES=$(($TOTAL_UNEXPECTED_SUCCESSES + $UNEXPECTED_SUCCESSES))
    TOTAL_EXPECTED_FAILURES=$(($TOTAL_EXPECTED_FAILURES + $EXPECTED_FAILURES))
    TOTAL_UNRESOLVED_TESTCASES=$(($TOTAL_UNRESOLVED_TESTCASES + $UNRESOLVED_TESTCASES))
    TOTAL_UNSUPPORTED_TESTS=$(($TOTAL_UNSUPPORTED_TESTS + $UNSUPPORTED_TESTS))
    TOTAL_DEJAGNU_ERRORS=$(($TOTAL_DEJAGNU_ERRORS + $DEJAGNU_ERRORS))
done
set +x # echo on

print_summary "Total summary" $TOTAL_EXPECTED_PASSES $TOTAL_UNEXPECTED_FAILURES \
    $TOTAL_UNEXPECTED_SUCCESSES $TOTAL_EXPECTED_FAILURES $TOTAL_UNRESOLVED_TESTCASES \
    $TOTAL_UNSUPPORTED_TESTS $TOTAL_DEJAGNU_ERRORS
