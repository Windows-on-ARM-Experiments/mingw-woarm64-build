#!/bin/bash

if [[ $1 != /* ]]; then
    PREFIX=./
else
    PREFIX=
fi

if [[ $1 = *.exe ]]; then
    ${PREFIX}${1} ${@:2}
else
    ${PREFIX}${1}.exe ${@:2}
fi
