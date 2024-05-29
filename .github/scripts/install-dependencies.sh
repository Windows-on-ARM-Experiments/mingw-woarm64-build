#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config.sh

echo "::group::Install Dependencies"
    sudo apt update
    sudo apt install -y build-essential autoconf automake autotools-dev binutils-for-build texinfo bison flex ccache docbook2x xmlto zlib1g-dev libc6-dev-arm64-cross libc6-dev-amd64-cross dejagnu
echo "::endgroup::"

echo 'Success!'
