#!/bin/bash

set -e
set +x

MESSAGE=$1
ENTER=$2

python3 -m pip3 install latex-dirtree-gen

ls -l
echo "`pwd`"

echo $MESSAGE
eval $ENTER
ls -l
