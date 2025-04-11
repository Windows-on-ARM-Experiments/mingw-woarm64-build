#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config.sh

echo "::group::Install Dependencies"
    sudo apt update
    sudo apt install -y \
      autoconf \
      autogen \
      automake \
      autotools-dev \
      binutils-for-build \
      bison \
      build-essential \
      ccache \
      dejagnu \
      docbook2x \
      flex \
      gettext \
      gdc \
      libc6-dev-arm64-cross \
      libc6-dev-amd64-cross \
      texinfo \
      xmlto \
      zlib1g-dev \
      zstd
echo "::endgroup::"

echo 'Success!'
