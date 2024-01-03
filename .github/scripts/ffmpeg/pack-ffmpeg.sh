#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

echo "::group::Pack FFmpeg"
    mkdir -p $ARTIFACT_PATH
    cd $FFMPEG_PATH
    zip -R $ARTIFACT_PATH/$TOOLCHAIN_NAME-ffmpeg.zip fate.log *.exe */*.exe --exclude ffmpeg_g.exe ffprobe_g.exe
echo "::endgroup::"

echo 'Success!'
