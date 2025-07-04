#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

MINGW_HEADERS_BUILD_PATH=$BUILD_PATH/mingw-headers

mkdir -p $MINGW_HEADERS_BUILD_PATH
cd $MINGW_HEADERS_BUILD_PATH

if [[ "$RUN_CONFIG" = 1 ]] || [[ ! -f "$MINGW_HEADERS_BUILD_PATH/Makefile" ]]; then
    echo "::group::Configure MinGW headers"
        rm -rf $MINGW_HEADERS_BUILD_PATH/*

        if [[ "$DEBUG" = 1 ]]; then
            HOST_OPTIONS="$HOST_OPTIONS \
                --enable-debug"
        fi

        case "$PLATFORM" in
            *cygwin*)
                TARGET_OPTIONS="$TARGET_OPTIONS \
                    --enable-w32api"
                ;;
        esac

        case "$PLATFORM-$CRT" in
            *mingw*-ucrt)
                TARGET_OPTIONS="$TARGET_OPTIONS \
                    --with-default-win32-winnt=0x603 \
                    --with-default-msvcrt=ucrt"
            ;;
            *mingw*-msvcrt)
                TARGET_OPTIONS="$TARGET_OPTIONS \
                    --with-default-win32-winnt=0x601 \
                    --with-default-msvcrt=msvcrt"
            ;;
        esac

        $SOURCE_PATH/mingw/mingw-w64-headers/configure \
            --prefix=$TOOLCHAIN_PATH/$TARGET \
            --build=$BUILD \
            --host=$TARGET \
            --enable-sdk=all \
            $HOST_OPTIONS \
            $TARGET_OPTIONS
    echo "::endgroup::"
fi

echo "::group::Build MinGW headers"
    make $BUILD_MAKE_OPTIONS
echo "::endgroup::"

if [[ "$RUN_INSTALL" = 1 ]]; then
    echo "::group::Install MinGW headers"
        make install

        case "$PLATFORM" in
            *mingw*)
                # Symlink for gcc
                ln -sf $TOOLCHAIN_PATH/$TARGET $TOOLCHAIN_PATH/mingw
                ;;
        esac

        if [[ "$DELETE_BUILD" = 1 ]]; then
            rm -rf $MINGW_HEADERS_BUILD_PATH
        fi
    echo "::endgroup::"
fi

echo 'Success!'
