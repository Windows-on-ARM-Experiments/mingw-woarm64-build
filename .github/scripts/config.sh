#!/bin/bash

set -e # exit on error
set -x # echo on

GCC_VERSION=${GCC_VERSION:-gcc-master}
BINUTILS_VERSION=${BINUTILS_VERSION:-binutils-master}

TARGET=${TARGET:-aarch64-w64-mingw32}
SOURCE_PATH=${SOURCE_PATH:-$PWD/code}
BUILD_PATH=${BUILD_PATH:-$PWD/build-$TARGET}
BUILD_MAKE_OPTIONS=${BUILD_MAKE_OPTIONS:-V=1 -j$(nproc)}
INSTALL_PATH=${INSTALL_PATH:-~/cross}

PATH=$INSTALL_PATH/bin:$PATH
