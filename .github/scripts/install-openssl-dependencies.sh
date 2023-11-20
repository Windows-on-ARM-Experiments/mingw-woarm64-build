#!/bin/bash

source `dirname $0`/config.sh

echo "::group::Install OpenSSL Dependencies"
    sudo apt update
    sudo apt install -y libtext-template-perl
echo "::endgroup::"

echo 'Success!'
