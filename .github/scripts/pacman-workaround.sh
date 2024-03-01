#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config.sh

DIR=`dirname ${BASH_SOURCE[0]}`/../..
DIR=`realpath $DIR`

echo "::group::Pacman hang workaround"
    while ! timeout -k 15s 10s pacman -U --noconfirm "$DIR/patches/pacman/pacman-6.1.0-4-x86_64.pkg.tar.zst"
    do
        echo "Command failed, retrying..."
    done
echo "::endgroup::"

echo "::group::Install patch"
   pacman -S --noconfirm patch
echo "::endgroup::"

pushd /
    echo "::group::Pin pacman packages"
        patch -p1 -b -i "$DIR/patches/pacman/0002-pin-pacman.patch"
    echo "::endgroup::"
  
    echo "::group::/etc/pacman.conf"
        cat /etc/pacman.conf
    echo "::endgroup::"
popd

echo "::group::Update packages"
    pacman -Syuu --noconfirm
echo "::endgroup::"
