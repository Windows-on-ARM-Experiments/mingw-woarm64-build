#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

echo "::group::Pack libxml2"
    mkdir -p $ARTIFACT_PATH
    cd $LIBXML2_PATH
    zip -r $ARTIFACT_PATH/$TOOLCHAIN_NAME-libxml2.zip *
echo "::endgroup::"

echo 'Success!'
