#!/bin/bash

BINUTILS_VERSION=${BINUTILS_VERSION:-binutils-master}

TARGET=${TARGET:-aarch64-w64-mingw32}
BUILD_PATH=${BUILD_PATH:-$PWD/build-$TARGET}
BUILD_MAKE_OPTIONS=-j$(nproc)
INSTALL_PATH=${INSTALL_PATH:-~/cross}

export PATH=$INSTALL_PATH/bin:$PATH

set -e # exit on error
set -x # echo on

mkdir -p $BUILD_PATH/binutils
cd $BUILD_PATH/binutils

echo "::group::Configure binutils"
../../code/$BINUTILS_VERSION/configure \
    --prefix=$INSTALL_PATH \
    --target=$TARGET
echo "::endgroup::"

cd $BUILD_PATH/binutils

echo "::group::Build binutils"
make $BUILD_MAKE_OPTIONS
echo "::endgroup::"

echo "::group::Install binutils"
make install
echo "::endgroup::"

echo 'Success!'
