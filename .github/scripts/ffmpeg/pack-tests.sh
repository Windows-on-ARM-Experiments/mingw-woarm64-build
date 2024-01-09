#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

FFMPEG_BUILD_PATH=$BUILD_PATH/ffmpeg

echo "::group::Pack FFmpeg tests"
    mkdir -p $ARTIFACT_PATH
    cd $FFMPEG_BUILD_PATH
    zip -R $ARTIFACT_PATH/$TOOLCHAIN_NAME-ffmpeg-tests.zip fate.log *.exe */*.exe --exclude ffmpeg_g.exe ffprobe_g.exe
echo "::endgroup::"

echo 'Success!'
