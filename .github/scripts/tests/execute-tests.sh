#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

PATH="$TOOLCHAIN_PATH/$TARGET/bin:$TOOLCHAIN_PATH/lib/gcc/$TARGET/:$TOOLCHAIN_PATH/lib/gcc/$TARGET/$GCC_VERSION/"

echo "::group::Execute $TARGET tests"
    pushd $ROOT_PATH/tests
        WSLENV=$WSLENV:PATH/p $TESTS_PATH/$TARGET-tests.exe
    popd
echo "::endgroup::"
