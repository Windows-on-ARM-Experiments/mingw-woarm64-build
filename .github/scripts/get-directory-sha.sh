#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config.sh

repo=$1
ref=$2
path=$3

echo sha=$( gh api repos/$repo/contents/$path?ref=$ref | jq -r '.[] | .sha' | shasum | cut -d ' ' -f 1 ) >> "$GITHUB_OUTPUT"
