#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

FFMPEG_BUILD_PATH=$BUILD_PATH/ffmpeg

mkdir -p $FFMPEG_BUILD_PATH
cd $FFMPEG_BUILD_PATH

if [ $RUN_CONFIG = 1 ] || [ ! -f "$FFMPEG_BUILD_PATH/Makefile" ] ; then
    echo "::group::Configure FFmpeg"
        rm -rf $FFMPEG_BUILD_PATH/*

        CFLAGS="-Wno-incompatible-pointer-types" \
        $SOURCE_PATH/$FFMPEG_VERSION/configure \
            --prefix=$FFMPEG_PATH \
            --arch=aarch64 \
            --target-os=mingw32 \
            --cross-prefix=aarch64-w64-mingw32-
    echo "::endgroup::"
fi

echo "::group::Build FFmpeg"
    make $BUILD_MAKE_OPTIONS
echo "::endgroup::"

echo "::group::Build FFmpeg"
    make fate > fate.log
echo "::endgroup::"

echo 'Success!'
