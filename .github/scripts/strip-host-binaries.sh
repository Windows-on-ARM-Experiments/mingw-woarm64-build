#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config.sh

echo "::group::Strip host binaries"
    find "$TOOLCHAIN_PATH" \
        -type f -exec sh -c 'file -b "$1" | grep -q "PE32+.*x86-64"' _ {} \; \
        -printf 'Stripping %p\n' \
        -exec strip --strip-unneeded {} \;
echo "::endgroup::"

echo 'Success!'
