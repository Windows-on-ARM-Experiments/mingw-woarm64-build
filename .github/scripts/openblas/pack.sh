#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

echo "::group::Pack OpenBLAS"
    mkdir -p $ARTIFACT_PATH
    cd $OPENBLAS_PATH
    zip -r $ARTIFACT_PATH/$TOOLCHAIN_NAME-openblas.zip *
echo "::endgroup::"

echo 'Success!'
