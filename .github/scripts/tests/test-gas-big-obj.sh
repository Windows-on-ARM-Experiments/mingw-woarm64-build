#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

GAS_PATH="$TOOLCHAIN_PATH/bin/$TARGET-as"
OBJDUMP_PATH="$TOOLCHAIN_PATH/bin/$TARGET-objdump"

echo "::group::Test GAS big object PE/COFF format"

    cd $ROOT_PATH/tests

    EXIT_CODE=0
    $GAS_PATH big-obj.s -o big-obj.o || EXIT_CODE=$?

    if [ $EXIT_CODE -eq 0 ]; then
        echo "Unexpected success, aarch64-w64-mingw32-as should default to small object PE/COFF format"
        exit 1
    fi

    EXIT_CODE=0
    $GAS_PATH -mbig-obj big-obj.s -o big-obj.o || EXIT_CODE=$?
    if [ $EXIT_CODE -ne 0 ]; then
        echo "Failure, aarch64-w64-mingw32-as with -mbig-obj argument failed to compile"
        exit 1
    fi

    # Search for the .data$a49999 section in the object file
    $OBJDUMP_PATH -h  big-obj.o | grep -Pzo '5000. \.data\$a49999  .*\n *CONTENTS, ALLOC, LOAD, DATA'

    EXIT_CODE=$?
    if [ $EXIT_CODE -ne 0 ]; then
        echo "Failure, aarch64-w64-mingw32-as with -mbig-obj argument could not create object file with a big number of sections"
        exit 1
    fi

echo "::endgroup::"
