#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config.sh

echo "::group::Strip target binaries"
    find "$TOOLCHAIN_PATH" \
        -type f -exec sh -c 'file -b "$1" | grep -q "PE32+.*Aarch64"' _ {} \; \
        -printf 'Stripping %p\n' \
        -exec $TARGET-strip --strip-unneeded {} \;
echo "::endgroup::"

echo 'Success!'
