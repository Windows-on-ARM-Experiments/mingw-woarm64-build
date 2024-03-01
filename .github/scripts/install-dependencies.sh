#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config.sh

echo "::group::Install Dependencies"
    sudo apt update
    sudo apt install -y build-essential binutils-for-build texinfo bison flex zlib1g-dev libgmp-dev libmpc-dev libc6-dev-arm64-cross libc6-dev-amd64-cross libisl-dev dejagnu wine winetricks
echo "::endgroup::"

echo 'Success!'
