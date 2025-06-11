#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../../config.sh

echo "::group::Build Cygwin $TARGET tests"
    pushd $ROOT_PATH/tests/cygwin
        mkdir -p $TESTS_PATH
        $TARGET-gcc -o $TESTS_PATH/hello-cygwin.exe hello-cygwin.c
        cp $TOOLCHAIN_PATH/bin/cygwin1.dll $TESTS_PATH
    popd
echo "::endgroup::"
