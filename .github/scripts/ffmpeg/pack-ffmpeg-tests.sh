#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

FFMPEG_BUILD_PATH=$BUILD_PATH/ffmpeg

echo "::group::Pack FFmpeg tests"
    mkdir -p $ARTIFACT_PATH
    cd $FFMPEG_BUILD_PATH
    zip -r $ARTIFACT_PATH/$TOOLCHAIN_NAME-ffmpeg-tests.zip *
echo "::endgroup::"

echo 'Success!'
