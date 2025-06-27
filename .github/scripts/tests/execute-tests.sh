#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

PATH="$TOOLCHAIN_PATH/aarch64-w64-mingw32/bin:$TOOLCHAIN_PATH/lib/gcc/aarch64-w64-mingw32/:$TOOLCHAIN_PATH/lib/gcc/$TARGET/$GCC_VERSION/"

echo "::group::Execute AArch64 tests"
    pushd $ROOT_PATH/tests
        WSLENV=$WSLENV:PATH/p ./build/bin/aarch64-mingw-tests.exe
    popd
echo "::endgroup::"
