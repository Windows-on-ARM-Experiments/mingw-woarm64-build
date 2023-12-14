#!/bin/bash

source `dirname $0`/config.sh

echo "::group::Pack libjpeg-turbo"
    mkdir -p $ARTIFACT_PATH
    cd $LIBJPEG_TURBO_PATH
    zip -r $ARTIFACT_PATH/$TOOLCHAIN_NAME-libjpeg-turbo.zip *
echo "::endgroup::"

echo 'Success!'
