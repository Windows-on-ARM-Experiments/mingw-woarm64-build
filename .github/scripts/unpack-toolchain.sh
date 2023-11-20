#!/bin/bash

source `dirname $0`/config.sh

echo "::group::Unpack toolchain"
mkdir -p $TOOLCHAIN_PATH
tar xzf $TARGET-$CRT-toolchain.tar.gz -C $TOOLCHAIN_PATH
echo "::endgroup::"

echo 'Success!'
