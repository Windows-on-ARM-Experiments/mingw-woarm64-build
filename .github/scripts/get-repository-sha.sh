#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config.sh

repo=$1
ref=$2

remote=$( git ls-remote -h https://github.com/$repo $ref | tee /dev/fd/2 )
echo sha=$(echo $remote | cut -d ' ' -f1 | tr -d '[:blank:]' ) >> "$GITHUB_OUTPUT"
