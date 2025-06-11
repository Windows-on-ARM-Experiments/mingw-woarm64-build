#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

BINUTILS_SOURCE_PATH=$SOURCE_PATH/binutils
BFD_BUILD_PATH=$BUILD_PATH/bfd

mkdir -p $BFD_BUILD_PATH/zlib
mkdir -p $BFD_BUILD_PATH/libsframe
mkdir -p $BFD_BUILD_PATH/bfd

if [[ "$RUN_CONFIG" = 1 ]] || [[ ! -f "$BFD_BUILD_PATH/Makefile" ]]; then
    echo "::group::Configure bfd"
        rm -rf $BFD_BUILD_PATH/zlib/*
        rm -rf $BFD_BUILD_PATH/libsframe/*
        rm -rf $BFD_BUILD_PATH/bfd/*

        if [[ "$DEBUG" = 1 ]]; then
            HOST_OPTIONS="$HOST_OPTIONS \
                --enable-debug"
        fi

        (cd $BFD_BUILD_PATH/zlib && \
        $BINUTILS_SOURCE_PATH/zlib/configure \
            --prefix=$TOOLCHAIN_PATH \
            --build=$BUILD \
            --host=$TARGET \
            --target=$TARGET \
            $HOST_OPTIONS \
            $TARGET_OPTIONS)


        (cd $BFD_BUILD_PATH/libsframe && \
        $BINUTILS_SOURCE_PATH/libsframe/configure \
            --prefix=$TOOLCHAIN_PATH \
            --build=$BUILD \
            --host=$TARGET \
            --target=$TARGET \
            $HOST_OPTIONS \
            $TARGET_OPTIONS)

        (cd $BFD_BUILD_PATH/bfd && \
        $BINUTILS_SOURCE_PATH/bfd/configure \
            --prefix=$TOOLCHAIN_PATH \
            --build=$BUILD \
            --host=$TARGET \
            --target=$TARGET \
            $HOST_OPTIONS \
            $TARGET_OPTIONS)
    echo "::endgroup::"
fi

echo "::group::Build bfd"
    (cd $BFD_BUILD_PATH/libsframe && make $BUILD_MAKE_OPTIONS)
    (cd $BFD_BUILD_PATH/bfd && make $BUILD_MAKE_OPTIONS)
echo "::endgroup::"

if [[ "$RUN_INSTALL" = 1 ]]; then
    echo "::group::Install bfd"
        (cd $BFD_BUILD_PATH/zlib && make install)
        (cd $BFD_BUILD_PATH/libsframe && make install)
        (cd $BFD_BUILD_PATH/bfd && make install)
        if [[ "$DELETE_BUILD" = 1 ]]; then
            rm -rf $BFD_BUILD_PATH
        fi
    echo "::endgroup::"
fi

echo 'Success!'
