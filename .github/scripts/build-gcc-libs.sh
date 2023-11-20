#!/bin/bash

set -e # exit on error
set -x # echo on

TARGET=${TARGET:-aarch64-w64-mingw32}
BUILD_PATH=${BUILD_PATH:-$PWD/build-$TARGET}
BUILD_MAKE_OPTIONS=-j$(nproc)

export PATH=$INSTALL_PATH/bin:$PATH

cd $BUILD_PATH/gcc

echo "::group::Build libstdc++"
make $BUILD_MAKE_OPTIONS all-target-libstdc++-v3
echo "::endgroup::"

echo "::group::Install libstdc++"
make install-target-libstdc++-v3
echo "::endgroup::"

echo "::group::Build libgfortran"
make $BUILD_MAKE_OPTIONS all-target-libgfortran
echo "::endgroup::"

echo "::group::Install libgfortran"
make install-target-libgfortran
echo "::endgroup::"

echo "::group::Build remaining GCC libraries"
make $BUILD_MAKE_OPTIONS all
echo "::endgroup::"

echo "::group::Install remaining GCC libraries"
make install
echo "::endgroup::"
