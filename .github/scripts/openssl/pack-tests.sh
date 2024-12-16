#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

echo "::group::Pack OpenSSL tests"
    mkdir -p $ARTIFACT_PATH
    cd $OPENSSL_BUILD_PATH
    zip -r $ARTIFACT_PATH/$TOOLCHAIN_NAME-openssl-tests.zip *
echo "::endgroup::"

echo 'Success!'
