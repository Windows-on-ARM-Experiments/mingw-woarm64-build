#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

echo "::group::Build Aarch64 tests"
    cd $ROOT_PATH/tests
    if [ $RUN_CONFIG = 1 ] || [ ! -f build/CMakeCache.txt ] ; then
        cmake -S . -B build
    fi
    cmake --build build
echo "::endgroup::"
