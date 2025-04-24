#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../.github/scripts/config.sh

set +e

echo "Launching $@"
WSLENV="$WSLENV:PATH/p" $@
echo "Result: $?"
