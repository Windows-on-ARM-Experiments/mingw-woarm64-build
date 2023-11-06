#!/bin/bash

TARGET=${TARGET:-aarch64-w64-mingw32}
BUILD_PATH=${BUILD_PATH:-$PWD/build-$TARGET}
BUILD_MAKE_OPTIONS=-j$(nproc)

export PATH=$INSTALL_PATH/bin:$PATH

echo "::group::Build libgcc"

cd $BUILD_PATH/gcc
make $BUILD_MAKE_OPTIONS all-target-libgcc
make install-target-libgcc

echo "::endgroup::"
