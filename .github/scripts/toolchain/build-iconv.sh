#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

ICONV_SOURCE_PATH=$SOURCE_PATH/iconv
ICONV_BUILD_PATH=$BUILD_PATH/iconv

mkdir -p $ICONV_BUILD_PATH
cd $ICONV_BUILD_PATH

if [[ "$RUN_CONFIG" = 1 ]] || [[ ! -f "$ICONV_BUILD_PATH/Makefile" ]]; then
    echo "::group::Configure iconv"
        rm -rf $ICONV_BUILD_PATH/*

        (cd $ICONV_SOURCE_PATH && ./autopull.sh && ./autogen.sh)

        if [[ "$DEBUG" = 1 ]]; then
            HOST_OPTIONS="$HOST_OPTIONS \
                --enable-debug"
        fi

        $ICONV_SOURCE_PATH/configure \
            --prefix=$TOOLCHAIN_PATH \
            --build=$BUILD \
            --host=$TARGET \
            --enable-static \
            $HOST_OPTIONS \
            $TARGET_OPTIONS
    echo "::endgroup::"
fi

echo "::group::Build iconv"
    (cd $ICONV_BUILD_PATH && make $BUILD_MAKE_OPTIONS)
echo "::endgroup::"

if [[ "$RUN_INSTALL" = 1 ]]; then
    echo "::group::Install iconv"
        (cd $ICONV_BUILD_PATH && make install)
        if [[ "$DELETE_BUILD" = 1 ]]; then
            rm -rf $ICONV_BUILD_PATH
        fi
    echo "::endgroup::"
fi

echo 'Success!'
