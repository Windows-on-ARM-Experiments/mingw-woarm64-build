#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config.sh

MINGW_VERSION=${MINGW_VERSION:-mingw-w64-master}

case "$TARGET" in
    x86_64*)
        MINGW_CONF="$MINGW_CONF --disable-lib32 --enable-lib64 --disable-libarm32 --disable-libarm64"
    ;;
    aarch64*)
        MINGW_CONF="$MINGW_CONF --disable-lib32 --disable-lib64 --disable-libarm32 --enable-libarm64"
    ;;
esac

case "$CRT" in
    ucrt)
        MINGW_CONF="$MINGW_CONF --with-default-msvcrt=ucrt"
    ;;
    msvcrt)
        MINGW_CONF="$MINGW_CONF --with-default-msvcrt=msvcrt"
    ;;
esac

if [ "$DEBUG" = 1 ] ; then
    MINGW_CONF="$MINGW_CONF --enable-debug"
fi

if [[ "$TARGET" == *mingw* ]]; then
    BUILD_MINGW=1
else
    BUILD_MINGW=0
fi
