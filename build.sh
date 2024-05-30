#! /bin/bash

# This script downloads and configures packages, 
# builds and installs the Windows on ARM64 GNU Toolchain.

UPDATE_SOURCE=1 .github/scripts/build.sh

echo 'Success!'
