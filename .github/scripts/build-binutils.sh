#!/bin/bash

source `dirname $0`/config.sh

mkdir -p $BUILD_PATH/binutils
cd $BUILD_PATH/binutils

if [ $RUN_CONFIG = 1 ] ; then
    echo "::group::Configure binutils"

    rm -rf $BUILD_PATH/binutils/*

    $SOURCE_PATH/$BINUTILS_VERSION/configure \
        --prefix=$INSTALL_PATH \
        --target=$TARGET
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
