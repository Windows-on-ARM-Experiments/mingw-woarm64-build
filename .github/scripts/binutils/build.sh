#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

BINUTILS_BUILD_PATH=$BUILD_PATH/binutils

mkdir -p $BINUTILS_BUILD_PATH
cd $BINUTILS_BUILD_PATH

if [ "$RUN_CONFIG" = 1 ] || [ ! -f "$BINUTILS_BUILD_PATH/Makefile" ] ; then
    echo "::group::Configure binutils"

    rm -rf $BINUTILS_BUILD_PATH/*

    if [ "$DEBUG" = 1 ] ; then
        ADDITIONAL_OPTIONS=" \
            --enable-debug"
    fi

    $SOURCE_PATH/$BINUTILS_VERSION/configure \
        --prefix=$TOOLCHAIN_PATH \
        --target=$TARGET \
        $ADDITIONAL_OPTIONS
    echo "::endgroup::"
fi

echo "::group::Build binutils"
make $BUILD_MAKE_OPTIONS
echo "::endgroup::"

if [ "$RUN_INSTALL" = 1 ] ; then
    echo "::group::Install binutils"
    make install
    echo "::endgroup::"
fi

echo 'Success!'
