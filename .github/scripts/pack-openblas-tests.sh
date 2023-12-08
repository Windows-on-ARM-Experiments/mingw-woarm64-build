#!/bin/bash

source `dirname $0`/config.sh

echo "::group::Pack OpenBLAS"
    cd $SOURCE_PATH/OpenBLAS
    zip $TOOLCHAIN_NAME-openblas-tests.zip ctest/x* ctest/cin* ctest/din* ctest/sin* ctest/zin*
echo "::endgroup::"

echo 'Success!'
