#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

echo "::group::Install cross headers and libraries"
    PREFIX=/usr/${TARGET//pc-/}
    [ -d $PREFIX/include ] && cp -r $PREFIX/include $TOOLCHAIN_PATH/$TARGET
    [ -d $PREFIX/lib ] && cp -r $PREFIX/lib $TOOLCHAIN_PATH/$TARGET
echo "::endgroup::"

echo 'Success!'
