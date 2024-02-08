#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config-mingw.sh

MINGW_BUILD_PATH=$BUILD_PATH/mingw-crt

mkdir -p $MINGW_BUILD_PATH
cd $MINGW_BUILD_PATH

if [ "$RUN_CONFIG" = 1 ] || [ ! -f "$MINGW_BUILD_PATH/Makefile" ] ; then
    echo "::group::Configure MinGW CRT"
        rm -rf $MINGW_BUILD_PATH/*

        if [ "$DEBUG" = 1 ] ; then
            HOST_OPTIONS="$HOST_OPTIONS \
                --enable-debug"
        fi

        case $PLATFORM in
            *mingw*)
                TARGET_OPTIONS="$TARGET_OPTIONS \
                    --enable-wildcard \
                    --disable-dependency-tracking"
                ;;
        esac

        $SOURCE_PATH/$MINGW_VERSION/mingw-w64-crt/configure \
            --prefix=$TOOLCHAIN_PATH/$TARGET \
            --build=$BUILD \
            --host=$TARGET \
            $HOST_OPTIONS \
            $TARGET_OPTIONS \
            CFLAGS="$MINGW_CFLAGS"
    echo "::endgroup::"
fi

echo "::group::Build MinGW CRT"
    make $BUILD_MAKE_OPTIONS
echo "::endgroup::"

if [ "$RUN_INSTALL" = 1 ] ; then
    echo "::group::Install MinGW CRT"
        make install
    echo "::endgroup::"
fi

echo 'Success!'
