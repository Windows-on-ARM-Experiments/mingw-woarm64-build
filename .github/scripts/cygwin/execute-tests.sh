#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

PATH="$TOOLCHAIN_PATH/bin:$TOOLCHAIN_PATH/lib/gcc/aarch64-pc-cygwin/:$TOOLCHAIN_PATH/lib/gcc/$TARGET/$GCC_VERSION/"

echo "::group::Execute Cygwin AArch64 tests"
    pushd $ROOT_PATH/tests/cygwin
        aarch64-pc-cygwin-gcc -o test.exe hello.c
        set +e
        message=$(./test.exe)
        error_code=$?
        set -e
        if [[ "$message" == "Hello Cygwin!" && $error_code == 11 ]]; then
            echo "Test passed"
        else
            echo "Test failed"
            exit 1
        fi
    popd
echo "::endgroup::"
