#!/bin/bash

# This file updates the image versions in the tutorial and config files.

if [ $# -ne 2 ]; then
    echo "Usage: $0 <VERSION_BEFORE> <VERSION_AFTER>"
    exit 1
fi

BEFORE=$1
AFTER=$2

find content -type f -exec sed -i '' "s/${BEFORE}/${AFTER}/g" {} \;
find src/install/ -type f -exec sed -i '' "s/${BEFORE}/${AFTER}/g" {} \;