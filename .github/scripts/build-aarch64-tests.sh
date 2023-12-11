#!/bin/bash

source `dirname $0`/config.sh

echo "::group::Build Aarch64 tests"
    cd tests
    cmake -S . -B build
    cmake --build build
echo "::endgroup::"
