#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

echo "::group::Install OpenSSL Dependencies"
    sudo apt update
    sudo apt install -y libtext-template-perl
echo "::endgroup::"

echo 'Success!'
