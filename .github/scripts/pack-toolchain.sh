#!/bin/bash

source `dirname $0`/config.sh

echo "::group::Pack toolchain"
tar czf $TARGET-$CRT-toolchain.tar.gz -C $TOOLCHAIN_PATH .
echo "::endgroup::"

echo 'Success!'
