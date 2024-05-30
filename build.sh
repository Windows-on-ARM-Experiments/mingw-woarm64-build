#!/bin/bash
# This script downloads and configures packages, 
# builds and installs the Windows on ARM64 GNU Toolchain.

set -e # exit on error
set -x # echo on

RUN_BOOTSTRAP=1 UPDATE_SOURCE=1 .github/scripts/build.sh

echo 'Success!'
