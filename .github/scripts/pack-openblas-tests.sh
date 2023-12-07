#!/bin/bash

source `dirname $0`/config.sh

echo "::group::Pack OpenBLAS"
    cd $SOURCE_PATH/OpenBLAS
    zip aarch64-msvcrt-openblas-tests.zip ctest/x* ctest/cin* ctest/din* ctest/sin* ctest/zin*
echo "::endgroup::"

echo 'Success!'
