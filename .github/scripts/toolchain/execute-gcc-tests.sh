#!/bin/bash

CCACHE=0 # Disable ccache for testing.

source `dirname ${BASH_SOURCE[0]}`/../config.sh

TAG=$1
MODULE=$2
FILTER=$3
TARGET_BOARD=${4:-wsl-sim}
HOST_BOARD=${5:-}

GCC_BUILD_PATH=$BUILD_PATH/gcc
TEST_RESULTS_PATH=$ARTIFACT_PATH/gcc-tests-$TAG

PATH="$TOOLCHAIN_PATH/bin:$PATH"

echo "::group::Execute GCC tests"
    for FILE in `find $GCC_BUILD_PATH -path '*testsuite*.log' -or -path '*testsuite*.sum'`; do
        rm $FILE
    done

    cd $GCC_BUILD_PATH
    if [[ -z "$MODULE" ]]; then
        MAKE_TARGET="check"
    else
        MAKE_TARGET="check-$MODULE"
    fi
    if [[ -n "$TARGET_BOARD" ]]; then
        TARGET_BOARD="--target-board $TARGET_BOARD"
    fi
    if [[ -n "$HOST_BOARD" ]]; then
        HOST_BOARD="--host-board $HOST_BOARD"
    fi
    make $BUILD_MAKE_OPTIONS -k $MAKE_TARGET \
        RUNTESTFLAGS="$FILTER $HOST_BOARD $TARGET_BOARD" \
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
