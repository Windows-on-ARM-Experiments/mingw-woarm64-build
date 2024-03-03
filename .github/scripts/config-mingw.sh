#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config.sh

MINGW_VERSION=${MINGW_VERSION:-mingw-w64-master}

case "$ARCH" in
    x86_64)
        TARGET_OPTIONS="$TARGET_OPTIONS --disable-lib32 --enable-lib64 --disable-libarm32 --disable-libarm64"
    ;;
    aarch64)
        TARGET_OPTIONS="$TARGET_OPTIONS --disable-lib32 --disable-lib64 --disable-libarm32 --enable-libarm64"
    ;;
esac

case "$CRT" in
    ucrt)
        TARGET_OPTIONS="$TARGET_OPTIONS --with-default-msvcrt=ucrt"
    ;;
    msvcrt)
        TARGET_OPTIONS="$TARGET_OPTIONS --with-default-msvcrt=msvcrt"
    ;;
esac
