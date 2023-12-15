#!/bin/bash

source `dirname $0`/config.sh

echo "::group::Install cross headers and libraries"
    [ -d /usr/$TARGET/include ] && cp -r /usr/$TARGET/include $TOOLCHAIN_PATH/$TARGET
    [ -d /usr/$TARGET/lib ] && cp -r /usr/$TARGET/lib $TOOLCHAIN_PATH/$TARGET
echo "::endgroup::"

echo 'Success!'
