#!/bin/bash

MINGW_VERSION=${MINGW_VERSION:-mingw-w64-master}

TARGET=${TARGET:-aarch64-w64-mingw32}
BUILD_PATH=${BUILD_PATH:-$PWD/build-$TARGET}
BUILD_MAKE_OPTIONS=-j$(nproc)
INSTALL_PATH=${INSTALL_PATH:-~/cross}

export PATH=$INSTALL_PATH/bin:$PATH

set -e # exit on error
set -x # echo on

echo "::group::Configure MinGW headers"

mkdir -p $BUILD_PATH/mingw-headers

cd $BUILD_PATH/mingw-headers
../../code/$MINGW_VERSION/mingw-w64-headers/configure \
  --prefix=$INSTALL_PATH/$TARGET \
  --host=$TARGET \
  --with-default-msvcrt=msvcrt

echo "::endgroup::"

echo "::group::Build MinGW headers"

cd $BUILD_PATH/mingw-headers
make $BUILD_MAKE_OPTIONS
make install

# Symlink for gcc
ln -sf $INSTALL_PATH/$TARGET $INSTALL_PATH/mingw

echo "::endgroup::"

echo 'Success!'
