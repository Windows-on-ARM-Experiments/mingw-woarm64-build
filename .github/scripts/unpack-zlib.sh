#!/bin/bash

source `dirname $0`/config.sh

echo "::group::Unpack zlib"
    mkdir -p $ZLIB_PATH
    unzip $ARTIFACT_PATH/$TOOLCHAIN_NAME-zlib.zip -d $ZLIB_PATH
echo "::endgroup::"

echo 'Success!'
