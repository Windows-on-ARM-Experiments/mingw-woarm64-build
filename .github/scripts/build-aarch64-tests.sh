#!/bin/bash

source `dirname $0`/config.sh

TESTS_BUILD_PATH=$BUILD_PATH/tests

mkdir -p $SOURCE_PATH/../tests
cd $SOURCE_PATH/../tests

if [ $RUN_CONFIG = 1 ] || [ ! -f $TESTS_BUILD_PATH/CMakeCache.txt ] ; then
    echo "::group::Configure tests"
        rm -f $TESTS_BUILD_PATH/CMakeCache.txt
        cmake -G"Unix Makefiles" \
            -DCMAKE_TOOLCHAIN_FILE=$TOOLCHAIN_FILE \
            -B $TESTS_BUILD_PATH
    echo "::endgroup::"
fi

echo "::group::Build Aarch64 tests"
    cmake --build $TESTS_BUILD_PATH ${BUILD_MAKE_OPTIONS//V=1/}
echo "::endgroup::"

dir $GITHUB_WORKSPACE/build-aarch64-w64-mingw32/tests/bin

echo "Success!"
