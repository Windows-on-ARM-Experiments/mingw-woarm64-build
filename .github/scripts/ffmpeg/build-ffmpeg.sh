#!/bin/bash

source `dirname $0`/config.sh

FFMPEG_BUILD_PATH=$BUILD_PATH/ffmpeg

mkdir -p $FFMPEG_BUILD_PATH
cd $FFMPEG_BUILD_PATH

if [ $RUN_CONFIG = 1 ] || [ ! -f "$FFMPEG_BUILD_PATH/Makefile" ] ; then
    echo "::group::Configure FFmpeg"
        rm -rf $FFMPEG_BUILD_PATH/*

        echo Patch FFmpeg
        sed -i "/_type=gcc/,/_cflags/s/_cflags_speed='-O3'/_cflags_speed='-O2'/" $SOURCE_PATH/$FFMPEG_VERSION/configure
        sed -i "s/\(^[[:space:]]\+\)\(\$(M)\$(TARGET_EXEC) \$(TARGET_PATH)\)/\1echo '\2/;s/-y \$(TARGET_PATH)\/\$@ 2>\/dev\/null$/\0\'/;s/\(^[[:space:]]\+\)\(\$(Q)\$(SRC_PATH)\/tests\/fate-run.sh\)/\1echo \2/" $SOURCE_PATH/$FFMPEG_VERSION/tests/Makefile
        sed -i "s/\(^[[:space:]]\+\)\(\$(M)\$(TARGET_EXEC) \$(TARGET_PATH)\)/\1echo '\2/;s/\$(TARGET_PATH)\/tests\/data\/hls-out-%03d.ts 2>\/dev\/null$/\0\'/;s/\$(TARGET_PATH)\/tests\/data\/hls-list-append.m3u8 2>\/dev\/null$/\0\'/" $SOURCE_PATH/$FFMPEG_VERSION/tests/fate/filter-audio.mak

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
    make fate > fate.txt
echo "::endgroup::"

echo 'Success!'
