#!/bin/bash

source `dirname $0`/config-mingw.sh

mkdir -p $BUILD_PATH/mingw
cd $BUILD_PATH/mingw

echo "::group::Configure MinGW CRT"
$SOURCE_PATH/$MINGW_VERSION/mingw-w64-crt/configure \
    --prefix=$TOOLCHAIN_PATH/$TARGET \
    --build=x86_64-linux-gnu \
    --host=$TARGET \
    --with-sysroot=$TOOLCHAIN_PATH \
    --disable-shared \
    $MINGW_CONF
echo "::endgroup::"

cd $BUILD_PATH/mingw

echo "::group::Build MinGW headers"
make $BUILD_MAKE_OPTIONS
echo "::endgroup::"

echo "::group::Install MinGW headers"
make install
echo "::endgroup::"

echo 'Success!'
