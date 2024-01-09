#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

echo "::group::Patch FFmpeg"
    sed -i "/_type=gcc/,/_cflags/s/_cflags_speed='-O3'/_cflags_speed='-O2'/" $SOURCE_PATH/$FFMPEG_VERSION/configure
    sed -i "s/\(^[[:space:]]\+\)\(\$(M)\$(TARGET_EXEC) \$(TARGET_PATH)\)/\1echo '\2/;s/-y \$(TARGET_PATH)\/\$@ 2>\/dev\/null$/\0\'/;s/\(^[[:space:]]\+\)\(\$(Q)\$(SRC_PATH)\/tests\/fate-run.sh\)/\1echo \2/" $SOURCE_PATH/$FFMPEG_VERSION/tests/Makefile
    sed -i "s/\(^[[:space:]]\+\)\(\$(M)\$(TARGET_EXEC) \$(TARGET_PATH)\)/\1echo '\2/;s/\$(TARGET_PATH)\/tests\/data\/hls-out-%03d.ts 2>\/dev\/null$/\0\'/;s/\$(TARGET_PATH)\/tests\/data\/hls-list-append.m3u8 2>\/dev\/null$/\0\'/" $SOURCE_PATH/$FFMPEG_VERSION/tests/fate/filter-audio.mak
echo "::endgroup::"

echo 'Success!'
