#!/usr/bin/env bash

current=$(git rev-parse --abbrev-ref HEAD 2>&1 > /dev/null)
success=$?
if [[ $success == 0 ]]; then
    echo $(git rev-parse --abbrev-ref HEAD)
else
    echo "N/A"
fi
