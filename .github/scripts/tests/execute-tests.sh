#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

echo "::group::Execute AArch64 tests"
    pushd $ROOT_PATH/tests
        WSLENV=$WSLENV:PATH/p ./build/bin/aarch64-mingw-tests.exe
    popd
echo "::endgroup::"
