#!/bin/bash

CCACHE=0 # Disable ccache for testing.

source `dirname ${BASH_SOURCE[0]}`/../config.sh

DIR=$1
MODULE=$2
FILTER=$3
TARGET_BOARD=${4:-wsl-sim}
HOST_BOARD=${5:-}

GCC_BUILD_PATH=$BUILD_PATH/gcc

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
        TARGET_BOARD="--target_board=$TARGET_BOARD"
    fi
    if [[ -n "$HOST_BOARD" ]]; then
        HOST_BOARD="--host_board=$HOST_BOARD"
    fi
    make $BUILD_MAKE_OPTIONS -k $MAKE_TARGET \
        RUNTESTFLAGS="$FILTER $HOST_BOARD $TARGET_BOARD" \
        DEJAGNU="$DEJAGNU_FILE" \
        CHECK_TEST_FRAMEWORK=1 \
        || echo "Error"

    mkdir -p $DIR
    rm -rf $DIR/*

    for FILE in `find $GCC_BUILD_PATH -path '*testsuite*.log' -or -path '*testsuite*.sum'`; do
        cp $FILE $DIR/
    done
echo "::endgroup::"

echo "::group::Create GCC tests summary"
     $ROOT_PATH/.github/scripts/toolchain/create-gcc-summary.sh $DIR >> $DIR/summary.md
     $ROOT_PATH/.github/scripts/toolchain/group-gcc-test-failures.sh $DIR >> $DIR/most-frequent-groups.md
echo "::endgroup::"

echo 'Success!'
