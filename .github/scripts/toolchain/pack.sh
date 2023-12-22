#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

echo "::group::Pack toolchain"
    mkdir -p $ARTIFACT_PATH
    tar czf $ARTIFACT_PATH/$TOOLCHAIN_PACKAGE_NAME -C $TOOLCHAIN_PATH .
echo "::endgroup::"

echo 'Success!'
