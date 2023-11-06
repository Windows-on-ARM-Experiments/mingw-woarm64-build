#!/bin/bash

BINUTILS_VERSION=${BINUTILS_VERSION:-binutils-master}

TARGET=${TARGET:-aarch64-w64-mingw32}
BUILD_PATH=${BUILD_PATH:-$PWD/build-$TARGET}
BUILD_MAKE_OPTIONS=-j$(nproc)
INSTALL_PATH=${INSTALL_PATH:-~/cross}

export PATH=$INSTALL_PATH/bin:$PATH

set -e # exit on error
set -x # echo on

echo "::group::Configure binutils"

mkdir -p $BUILD_PATH/binutils

cd $BUILD_PATH/binutils
../../code/$BINUTILS_VERSION/configure \
    --prefix=$INSTALL_PATH \
    --target=$TARGET 

echo "::endgroup::"

echo "::group::Build binutils"

cd $BUILD_PATH/binutils
make $BUILD_MAKE_OPTIONS
make install

echo "::endgroup::"

echo 'Success!'
