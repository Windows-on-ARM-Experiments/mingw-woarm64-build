#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

FILTER=$1

PATH="$TOOLCHAIN_PATH/aarch64-w64-mingw32/bin:$TOOLCHAIN_PATH/lib/gcc/aarch64-w64-mingw32:$TOOLCHAIN_PATH/lib/gcc/$TARGET/$GCC_VERSION:$PATH"

echo "::group::Execute libjpeg-turbo tests"
    pushd $LIBJPEG_TURBO_TESTS_PATH
        WSLENV=$WSLENV:PATH/p \
        ctest $TEST_CMAKE_OPTIONS \
            ${FILTER:+-R $FILTER}
    popd
echo "::endgroup::"

echo 'Success!'
