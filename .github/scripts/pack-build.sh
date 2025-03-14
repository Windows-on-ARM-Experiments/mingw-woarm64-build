#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config.sh

echo "::group::Pack build folder"
    mkdir -p $ARTIFACT_PATH
    tar czf $ARTIFACT_PATH/$BUILD_PACKAGE_NAME -C $BUILD_PATH .
echo "::endgroup::"

echo 'Success!'
