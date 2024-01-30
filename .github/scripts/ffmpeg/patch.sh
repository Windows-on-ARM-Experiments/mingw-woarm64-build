#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

cd $SOURCE_PATH/$FFMPEG_VERSION

echo "::group::Patch FFmpeg"
    git apply --3way --ignore-whitespace $PATCHES_PATH/ffmpeg/fate.patch
echo "::endgroup::"

echo 'Success!'
