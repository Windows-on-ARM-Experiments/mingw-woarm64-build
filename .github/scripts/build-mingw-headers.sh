#!/bin/bash

source `dirname $0`/config-mingw.sh

mkdir -p $BUILD_PATH/mingw-headers
cd $BUILD_PATH/mingw-headers

echo "::group::Configure MinGW headers"
$SOURCE_PATH/$MINGW_VERSION/mingw-w64-headers/configure \
    --prefix=$INSTALL_PATH/$TARGET \
    --host=$TARGET \
    $MINGW_CONF
echo "::endgroup::"

cd $BUILD_PATH/mingw-headers

echo "::group::Build MinGW headers"
make $BUILD_MAKE_OPTIONS
echo "::endgroup::"

echo "::group::Install MinGW headers"
make install
echo "::endgroup::"

# Symlink for gcc
ln -sf $INSTALL_PATH/$TARGET $INSTALL_PATH/mingw

echo 'Success!'
