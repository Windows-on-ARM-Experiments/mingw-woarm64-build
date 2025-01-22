#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config.sh

echo "::group::Install Dependencies"
    sudo apt update
    sudo apt install -y \
      clang \
      cmake \
      gcc \
      lld \
      zstd
echo "::endgroup::"

echo 'Success!'
