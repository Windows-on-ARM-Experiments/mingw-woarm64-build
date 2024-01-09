#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

echo "::group::Pack FFmpeg"
    mkdir -p $ARTIFACT_PATH
    cd $FFMPEG_PATH
    zip -r $ARTIFACT_PATH/$TOOLCHAIN_NAME-ffmpeg.zip *
echo "::endgroup::"

echo 'Success!'
