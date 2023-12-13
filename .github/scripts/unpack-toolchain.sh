#!/bin/bash

source `dirname $0`/config.sh

echo "::group::Unpack toolchain"
mkdir -p $TOOLCHAIN_PATH
tar xzf $ARTIFACT_PATH/$TOOLCHAIN_PACKAGE_NAME -C $TOOLCHAIN_PATH
echo "::endgroup::"

echo 'Success!'
