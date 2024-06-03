#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

echo "::group::Build Aarch64 tests"
    cd tests
    cmake -S . -B build
    cmake --build build

    cp $TOOLCHAIN_PATH/$TARGET/bin/*.dll build/bin
echo "::endgroup::"
