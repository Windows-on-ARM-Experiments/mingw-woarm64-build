#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

OPENBLAS_BUILD_PATH=$SOURCE_PATH/$OPENBLAS_VERSION

echo "::group::Pack OpenBLAS tests"
    mkdir -p $ARTIFACT_PATH
    cd $OPENBLAS_BUILD_PATH
    zip $ARTIFACT_PATH/$TOOLCHAIN_NAME-openblas-tests.zip ctest/x* ctest/cin* ctest/din* ctest/sin* ctest/zin*
echo "::endgroup::"

echo 'Success!'
