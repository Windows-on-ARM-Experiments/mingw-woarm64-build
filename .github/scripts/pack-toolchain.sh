#!/bin/bash

source `dirname $0`/config.sh

echo "::group::Pack toolchain"
tar czf $TOOLCHAIN_PACKAGE_NAME -C $TOOLCHAIN_PATH .
echo "::endgroup::"

echo 'Success!'
