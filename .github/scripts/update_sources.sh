#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config.sh

echo "::group::Update binutils, gcc and mingw sources"
    mkdir -p "$SOURCE_PATH"

    cd "$SOURCE_PATH"
    git -C "$BINUTILS_VERSION" pull || git clone "$BINUTILS_REPO" -b "$BINUTILS_BRANCH" "$BINUTILS_VERSION" --single-branch --depth 1
    git -C "$GCC_VERSION" pull || git clone "$GCC_REPO" -b "$GCC_BRANCH" "$GCC_VERSION" --single-branch --depth 1
    git -C "$MINGW_VERSION" pull || git clone "$MINGW_REPO" -b "$MINGW_BRANCH" "$MINGW_VERSION" --single-branch --depth 1
echo "::endgroup::"

echo 'Success!'