#!/bin/bash

CCACHE=0 # Disable ccache for testing.

source `dirname ${BASH_SOURCE[0]}`/../config.sh

echo "::group::Test GAS big object PE/COFF format"

    ls -l $ROOT_PATH
    ls -l $BUILD_PATH
    cd $BUILD_PATH/binutils

    EXIT_CODE=0
    make $BUILD_MAKE_OPTIONS check-gas \
        RUNTESTFLAGS="pe.exp=big-obj --target_board=wsl-sim" \
        DEJAGNU="$DEJAGNU_FILE" \
        CHECK_TEST_FRAMEWORK=1 \
        || EXIT_CODE=$?

    if [ $EXIT_CODE -ne 0 ]; then
        echo "Failure! aarch64-w64-mingw32-as with -mbig-obj argument could not create object file with a big number of sections"
        exit 1
    fi

echo "::endgroup::"

echo 'Success!'
