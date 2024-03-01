#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config.sh

pushd /
    echo "::group::Install patch"
        pacman -S --noconfirm patch
    echo "::endgroup::"
  
    echo "::group::Add WoArm64 repository"
        PATCH_DIR=$PATCHES_PATH/pacman
        patch -p1 -b -i "$PATCH_DIR/0001-add-woarm64-repository.patch"
    echo "::endgroup::"
  
    echo "::group::Update packages database"
       pacman -Sy --noconfirm
    echo "::endgroup::"
popd
