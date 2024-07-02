#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config.sh

if ! [ -z "$GITHUB_WORKSPACE" ]; then
  echo "CCACHE_DIR=`cygpath "$GITHUB_WORKSPACE"`/ccache" >> "$GITHUB_ENV"
  echo "timestamp=$(date -u --iso-8601=seconds)" >> "$GITHUB_OUTPUT"
fi

if [ -d /usr/lib/ccache/bin ]; then
  echo "::group::Add aarch64 toolchain to ccache"
    pushd /usr/lib/ccache/bin/
      ln -sf /usr/bin/ccache aarch64-w64-mingw32-gcc
      ln -sf /usr/bin/ccache aarch64-w64-mingw32-g++
      ln -sf /usr/bin/ccache aarch64-w64-mingw32-c++
    popd

    ln -sf /opt/bin/$BUILD-gcc /opt/$BUILD/bin/gcc
    ln -sf /opt/bin/$BUILD-gcc-ar /opt/$BUILD/bin/gcc-ar
    ln -sf /opt/bin/$BUILD-g++ /opt/$BUILD/bin/g++
    ln -sf /usr/bin/true /opt/$BUILD/bin/makeinfo
  echo "::endgroup::"
fi
