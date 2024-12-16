#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

cd $SOURCE_PATH/libjpeg-turbo

echo "::group::Patch libjpeg-turbo"
    git apply $PATCHES_PATH/libjpeg-turbo/sopen.patch
    git apply $PATCHES_PATH/libjpeg-turbo/testimages.patch
echo "::endgroup::"

echo 'Success!'
