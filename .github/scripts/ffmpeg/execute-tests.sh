#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

SOURCE_PATH=$(realpath `dirname ${BASH_SOURCE[0]}`/../../../code)
# path to the file with test names which should be skipped
SKIP_TESTS_PATH=$(realpath `dirname ${BASH_SOURCE[0]}`/skip-tests.txt)

echo "::group::Test FFmpeg"
    pushd $FFMPEG_TESTS_PATH

    mkdir -p tests/data/fate
    [ ! -f tests/base64 ] && ln -s /usr/bin/base64 tests/base64

# fate.log usually contains 3 lines per test
# TEST <testname>
# echo for command with quotas to execute
# command without quotas to execute

    SKIPPED_TEST=1
    IFS=$'\n'
    for i in $(sed '/^@/d;/fate-source/d' fate.log); do
        if [[ $i =~ ^TEST ]]; then
            TEST_NAME=${i##* }
            # check if test should be skipped
            SKIPPED_TEST=$(cat $SKIP_TESTS_PATH | grep -q "^$TEST_NAME$" && echo 1 || echo 0)
            [[ $SKIPPED_TEST == 1 ]] && echo SKIP $TEST_NAME || echo TEST $TEST_NAME
            continue
        fi

        # skip lines related to a test which should be skipped or which do not start with echo
        if [[ $SKIPPED_TEST == 1 ]] || [[ ! $i =~ ^echo ]]; then
            continue
        fi

        # update the command with local paths 
        command=$SOURCE_PATH/$FFMPEG_VERSION/${i#echo @*$FFMPEG_VERSION/}
        command=${command//\"\/home*ffmpeg/\".}
        echo $command
        eval $command || { echo FAILED $TEST_NAME; exit 1; }
    done

    popd
echo "::endgroup::"

echo "Success!"
