#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

MINGW_HEADERS_BUILD_PATH=$BUILD_PATH/mingw-headers

mkdir -p $MINGW_HEADERS_BUILD_PATH
cd $MINGW_HEADERS_BUILD_PATH

if [ "$RUN_CONFIG" = 1 ] || [ ! -f "$MINGW_HEADERS_BUILD_PATH/Makefile" ] ; then
    echo "::group::Configure MinGW headers"
        rm -rf $MINGW_HEADERS_BUILD_PATH/*

        if [ "$DEBUG" = 1 ] ; then
            HOST_OPTIONS="$HOST_OPTIONS \
                --enable-debug"
        fi

        case "$PLATFORM" in
            *cygwin*)
                TARGET_OPTIONS="$TARGET_OPTIONS \
                    --enable-w32api"
                ;;
            *mingw*)
                TARGET_OPTIONS="$TARGET_OPTIONS \
                    --enable-sdk=all"
                ;;
        esac

        case "$CRT" in
            ucrt)
                TARGET_OPTIONS="$TARGET_OPTIONS \
                    --with-default-win32-winnt=0x603 \
                    --with-default-msvcrt=ucrt"
            ;;
            msvcrt)
                TARGET_OPTIONS="$TARGET_OPTIONS \
                    --with-default-win32-winnt=0x601 \
                    --with-default-msvcrt=msvcrt"
            ;;
        esac

        $SOURCE_PATH/$MINGW_VERSION/mingw-w64-headers/configure \
            --prefix=$TOOLCHAIN_PATH/$TARGET \
            --build=$BUILD \
            --host=$TARGET \
            $HOST_OPTIONS \
            $TARGET_OPTIONS
    echo "::endgroup::"
fi

echo "::group::Build MinGW headers"
    $BUILD_MAKE $BUILD_MAKE_OPTIONS
echo "::endgroup::"

if [ "$RUN_INSTALL" = 1 ] ; then
    echo "::group::Install MinGW headers"
        $INSTALL_MAKE $INSTALL_MAKE_OPTIONS install

        # Symlink for gcc
        if [ -z "$MSYSTEM" ]; then
            ln -sf $TOOLCHAIN_PATH/$TARGET $TOOLCHAIN_PATH/mingw
        else
            mkdir -p $TOOLCHAIN_PATH/mingw
            cp -rf $TOOLCHAIN_PATH/$TARGET/* $TOOLCHAIN_PATH/mingw
        fi
    echo "::endgroup::"
fi

echo 'Success!'
