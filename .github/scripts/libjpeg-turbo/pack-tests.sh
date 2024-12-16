#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

echo "::group::Pack libjpeg-turbo tests"
    mkdir -p $ARTIFACT_PATH
    cd $LIBJPEG_TURBO_BUILD_PATH
    zip -r $ARTIFACT_PATH/$TOOLCHAIN_NAME-libjpeg-turbo-tests.zip *
echo "::endgroup::"

echo 'Success!'
