#!/bin/bash

set -e # exit on error
set -x # echo on

BINUTILS_VERSION=${BINUTILS_VERSION:-binutils-master}

BUILD=${BUILD:-x86_64-pc-linux-gnu}
HOST=${HOST:-x86_64-pc-linux-gnu}
TARGET=${TARGET:-aarch64-w64-mingw32}
BUILD_PATH=${BUILD_PATH:-$PWD/build-$TARGET}
BUILD_MAKE_OPTIONS=${BUILD_MAKE_OPTIONS:-j$(nproc)}
INSTALL_PATH=${INSTALL_PATH:-~/cross}

export PATH=$INSTALL_PATH/bin:$PATH

mkdir -p $BUILD_PATH/binutils-$HOST
cd $BUILD_PATH/binutils-$HOST

if [ $BUILD != $HOST ]; then
  export CFLAGS="-I$INSTALL_PATH/$HOST/include -D_MSVCRT_ -D_WIN32_WINNT=0x601"
  export CXXFLAGS="-I$INSTALL_PATH/$HOST/include -D_MSVCRT_ -D_WIN32_WINNT=0x601"
  export LDFLAGS="-L$INSTALL_PATH/$HOST/lib"
  INSTALL_PATH="$INSTALL_PATH/$HOST"
fi

if [ $RUN_CONFIG = 1 ] ; then
    echo "::group::Configure binutils"
    
    rm -rf $BUILD_PATH/binutils-$HOST/*

    # ADDED --disable-shared
    ../../code/$BINUTILS_VERSION/configure \
        --prefix=$INSTALL_PATH \
        --build=$BUILD \
        --host=$HOST \
        --target=$TARGET \
        --disable-shared \
        --disable-werror
    echo "::endgroup::"
fi

echo "::group::Build binutils"
make $BUILD_MAKE_OPTIONS
echo "::endgroup::"

if [ $RUN_INSTALL = 1 ] ; then
    echo "::group::Install binutils"
    make install
    echo "::endgroup::"
fi

echo 'Success!'
