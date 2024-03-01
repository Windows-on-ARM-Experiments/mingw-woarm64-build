#!/bin/bash

CCACHE=0 # Disable ccache for testing.

source `dirname ${BASH_SOURCE[0]}`/../config.sh

# Add target binutils to path.
if [[ -n "$MSYSTEM" && "$TEST" = 1 ]]; then
    PATH="/opt/$TARGET/bin:$PATH"
fi

TAG=$1
MODULE=$2
FILTER=$3
#BOARDS="--host_board dummy --target_board dummy"

GCC_BUILD_PATH=$BUILD_PATH/gcc
TEST_RESULTS_PATH=$ARTIFACT_PATH/gcc-tests-$TAG

echo "::group::Execute GCC tests"
    for FILE in `find $GCC_BUILD_PATH -path '*testsuite*.log' -or -path '*testsuite*.sum'`; do
        rm $FILE
    done

    cd $GCC_BUILD_PATH
    if [ -z "$MODULE" ]; then
        MAKE_TARGET="check"
    else
        MAKE_TARGET="check-$MODULE"
    fi
    make $BUILD_MAKE_OPTIONS -k $MAKE_TARGET \
        RUNTESTFLAGS="$FILTER $BOARDS" \
        DEJAGNU="$DEJAGNU_FILE" || true

    mkdir -p $TEST_RESULTS_PATH
    rm -rf $TEST_RESULTS_PATH/*

    for FILE in `find $GCC_BUILD_PATH -path '*testsuite*.log' -or -path '*testsuite*.sum'`; do
        cp $FILE $TEST_RESULTS_PATH/
    done
echo "::endgroup::"

echo 'Success!'
