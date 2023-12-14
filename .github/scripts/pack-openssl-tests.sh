#!/bin/bash

source `dirname $0`/config.sh

OPENSSL_BUILD_PATH=$BUILD_PATH/openssl

echo "::group::Pack OpenSSL tests"
    mkdir -p $ARTIFACT_PATH
    cd $OPENSSL_BUILD_PATH
    zip -r $ARTIFACT_PATH/$TOOLCHAIN_NAME-openssl-tests.zip *
echo "::endgroup::"

echo 'Success!'
