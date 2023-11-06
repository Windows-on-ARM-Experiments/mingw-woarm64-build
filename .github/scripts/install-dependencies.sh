#! /bin/bash
set -e # stop at first error
set -x # echo on

echo "::group::Install Dependencies"
sudo apt update
sudo apt install -y build-essential binutils-for-build texinfo bison flex zlib1g-dev libgmp-dev dejagnu libmpc-dev
echo "::endgroup::"

echo 'Success!'
