#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config.sh

job_keys_json=$1

toolchain_cache_key=$(echo $job_keys_json | jq -r '.["$TOOLCHAIN_NAME-toolchain-cache-key"]')
echo "toolchain-cache-key=$toolchain_cache_key" >> "$GITHUB_ENV"
