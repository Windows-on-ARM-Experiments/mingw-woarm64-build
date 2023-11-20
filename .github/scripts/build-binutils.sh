#!/bin/bash

source `dirname $0`/config.sh

mkdir -p $BUILD_PATH/binutils
cd $BUILD_PATH/binutils

echo "::group::Configure binutils"
$SOURCE_PATH/$BINUTILS_VERSION/configure \
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
