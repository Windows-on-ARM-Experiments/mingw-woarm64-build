#!/bin/bash

source `dirname $0`/config.sh

cd $BUILD_PATH/gcc

echo "::group::Build libgcc"
make $BUILD_MAKE_OPTIONS all-target-libgcc
echo "::endgroup::"

echo "::group::Install libgcc"
make install-target-libgcc
echo "::endgroup::"
