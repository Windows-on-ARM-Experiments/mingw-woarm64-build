#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config.sh

echo "::group::Download toolchain"
    RELEASE_NAME=`gh release view --json name --jq .name`
    rm -f $ARTIFACT_PATH/$TOOLCHAIN_PACKAGE_NAME
    gh release download $RELEASE_NAME -D $ARTIFACT_PATH

    mkdir -p $TOOLCHAIN_PATH
    tar -xzf $ARTIFACT_PATH/$TOOLCHAIN_PACKAGE_NAME -C $TOOLCHAIN_PATH

    ls -al $TOOLCHAIN_PATH
echo "::endgroup::"

echo 'Success!'
