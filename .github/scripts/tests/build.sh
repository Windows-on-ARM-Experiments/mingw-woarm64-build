#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

echo "::group::Build Aarch64 tests"
    if [[ "$RUN_CONFIG" = 1 ]]; then
      rm -rf $ROOT_PATH/tests/build
    fi

    cd $ROOT_PATH/tests
    cmake -S . -B build
    cmake --build build
echo "::endgroup::"
