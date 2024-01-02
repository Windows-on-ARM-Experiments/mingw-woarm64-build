#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

echo "::group::Pack OpenSSL"
    mkdir -p $ARTIFACT_PATH
    cd $OPENSSL_PATH
    zip -r $ARTIFACT_PATH/$TOOLCHAIN_NAME-openssl.zip *
echo "::endgroup::"

echo 'Success!'
