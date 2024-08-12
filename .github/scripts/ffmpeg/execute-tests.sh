#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

SOURCE_PATH=`cygpath $SOURCE_PATH`
FFMPEG_SOURCE_PATH=$SOURCE_PATH/ffmpeg

# Path to the file with test names which should be skipped.
SKIP_TESTS_PATH=$(realpath `dirname ${BASH_SOURCE[0]}`/skip-tests.txt)
SKIP_TESTS=$(<$SKIP_TESTS_PATH)

# Regex pattern to filter tests.
FILTER_TESTS=""

# Regex pattern to include alredy filtered tests.
INCLUDE_TESTS=""

echo "::group::Test FFmpeg"
    pushd $FFMPEG_TESTS_PATH

    mkdir -p tests/data/fate

    # fate.log usually contains 2 lines per test:
    #   TEST <testname>
    #   <command to execute>
    # There might be multiple commands each on a new line.
    IFS=$'\n'
    SKIP=1
    for i in $(cat fate.log); do
        if [[ "$i" =~ ^(TEST) ]]; then
            SKIP=0
            TEST_NAME=${i##* }
            COMMAND_NAME=$i

            # Check if test should be skipped.
            for SKIP_TEST in $SKIP_TESTS; do
                if [[ "${TEST_NAME//[[:space:]]/}" == "${SKIP_TEST//[[:space:]]/}" ]]; then
                    SKIP=1
                    break
                fi
            done

            # Check if test should be skipped by filter.
            if [[ "$FILTER_TESTS" != "" && "$TEST_NAME" =~ $FILTER_TESTS ]]; then
                SKIP=1
            fi

            # Check if test should be included.
            if [[ "$INCLUDE_TESTS" != "" && "$TEST_NAME" =~ $INCLUDE_TESTS ]]; then
                SKIP=0
            fi

            [[ "$SKIP" == 1 ]] && echo SKIP $TEST_NAME || echo TEST $TEST_NAME
            continue
        fi

        if [[ "$i" =~ ^(GEN|COPY) ]]; then
            SKIP=0
            COMMAND_NAME=$i
            echo $COMMAND_NAME
            continue
        fi

        # If test was skipped in previous line.
        if [[ "$SKIP" == 1 ]]; then
            continue
        fi

        COMMAND=$i
        echo $COMMAND
        eval $COMMAND || { echo FAILED $COMMAND_NAME; exit 1; }
    done

    popd
echo "::endgroup::"

echo "Success!"
