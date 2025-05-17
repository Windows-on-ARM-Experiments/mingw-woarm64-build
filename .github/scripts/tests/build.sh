#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

cd $ROOT_PATH/tests

if [[ "$RUN_CONFIG" = 1 ]] || [[ ! -f "build/Makefile" ]]; then
  echo "::group::Configure GCC"
    rm -rf build
    cmake -S . -B build
  echo "::endgroup::"
fi

echo "::group::Build Aarch64 tests"
  cmake --build build
echo "::endgroup::"
