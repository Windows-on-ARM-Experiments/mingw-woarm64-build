#!/bin/bash

CCACHE=0 # Disable ccache for testing.

source `dirname ${BASH_SOURCE[0]}`/../config.sh

TAG=$1
GCC_BUILD_PATH=$BUILD_PATH/gcc
TEST_RESULTS_PATH=$ARTIFACT_PATH/gcc-tests-$TAG

echo "::group::Execute GCC tests"
    for FILE in `find $GCC_BUILD_PATH -path '*testsuite*.log' -or -path '*testsuite*.sum'`; do
        rm $FILE
    done

    cd $GCC_BUILD_PATH
    make $BUILD_MAKE_OPTIONS -k check \
        RUNTESTFLAGS="--target_board wsl-sim" \
        DEJAGNU="$DEJAGNU_FILE" \
        CHECK_TEST_FRAMEWORK=1 \
        || echo "Error"

    mkdir -p $TEST_RESULTS_PATH
    rm -rf $TEST_RESULTS_PATH/*

    for FILE in `find $GCC_BUILD_PATH -path '*testsuite*.log' -or -path '*testsuite*.sum'`; do
        cp $FILE $TEST_RESULTS_PATH/
    done
echo "::endgroup::"

echo 'Success!'
