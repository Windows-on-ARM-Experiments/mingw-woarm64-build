#!/bin/bash

pushd $1 > /dev/null
    git log -1 --pretty=format:"%H" ${@:2}
popd > /dev/null
