#!/bin/bash

source `dirname $0`/config.sh

echo "::group::Install Dependencies"
sudo apt update
sudo apt install -y build-essential binutils-for-build texinfo bison flex zlib1g-dev libgmp-dev dejagnu libmpc-dev
echo "::endgroup::"

echo 'Success!'
