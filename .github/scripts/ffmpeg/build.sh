#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

FFMPEG_BUILD_PATH=$BUILD_PATH/ffmpeg
FFMPEG_SOURCE_PATH=$SOURCE_PATH/$FFMPEG_VERSION

mkdir -p $FFMPEG_BUILD_PATH
cd $FFMPEG_BUILD_PATH

if [ $RUN_CONFIG = 1 ] || [ ! -f "$FFMPEG_BUILD_PATH/Makefile" ] ; then
    echo "::group::Configure FFmpeg"
        rm -rf $FFMPEG_BUILD_PATH/*

        if [ $DEBUG = 1 ] ; then
            ADDITIONAL_OPTIONS=" \
                --enable-debug=3"
        fi

        CFLAGS="-Wno-incompatible-pointer-types -fno-builtin-sin -fno-builtin-cos" \
        $FFMPEG_SOURCE_PATH/configure \
            --prefix=$FFMPEG_PATH \
            --target-path="." \
            --target-samples="./samples" \
            --arch=aarch64 \
            --target-os=mingw32 \
            --cross-prefix=aarch64-w64-mingw32- \
            $ADDITIONAL_OPTIONS
    echo "::endgroup::"
fi

echo "::group::Build FFmpeg"
    make $BUILD_MAKE_OPTIONS
echo "::endgroup::"

echo "::group::Build FFmpeg tests"
    make fate-rsync SAMPLES=samples
    make fate | tee fate.log.orig
    sed -E "/^warning: |^HOSTCC\t|^HOSTLD\t|^AS\t|^CC\t|^LD\t|TEST    source|fate-source/d" fate.log.orig > fate.log
    sed -i "s@$FFMPEG_SOURCE_PATH@\$FFMPEG_SOURCE_PATH@g" fate.log
echo "::endgroup::"

echo 'Success!'
