#!/bin/bash

source `dirname $0`/config.sh

cd $SOURCE_PATH/$LIBJPEG_TURBO_VERSION

echo "::group::Patch libjpeg-turbo"
    git apply $PATCHES_PATH/libjpeg-turbo/testimages.patch
echo "::endgroup::"

echo 'Success!'
