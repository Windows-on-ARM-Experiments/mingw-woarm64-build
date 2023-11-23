#!/bin/bash

source `dirname $0`/config-mingw.sh

echo "::group::Build Aarch64 tests"
    cd tests
    cmake -S . -B build
    cmake --build build
echo "::endgroup::"
