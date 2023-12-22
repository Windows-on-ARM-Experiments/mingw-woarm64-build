#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

echo "::group::Pack zlib"
    mkdir -p $ARTIFACT_PATH
    cd $ZLIB_PATH
    zip -r $ARTIFACT_PATH/$TOOLCHAIN_NAME-zlib.zip *
echo "::endgroup::"

echo 'Success!'
