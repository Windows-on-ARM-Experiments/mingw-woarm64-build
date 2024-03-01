#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config.sh

echo "::group::Install Dependencies"
    if [[ -n "$MSYSTEM" ]]; then
        pacman -S --noconfirm git autogen autoconf-wrapper autoconf-archive automake-wrapper \
            gcc base-devel zlib-devel ccache flex bison dejagnu \
            mingw-w64-cross-gcc mingw-w64-cross-zlib mingw-w64-cross-windows-default-manifest
    else
        sudo apt update
        sudo apt install -y build-essential autoconf automake autotools-dev binutils-for-build \
          texinfo bison flex ccache docbook2x xmlto zlib1g-dev libc6-dev-arm64-cross \
          libc6-dev-amd64-cross dejagnu
    fi
echo "::endgroup::"

echo 'Success!'
