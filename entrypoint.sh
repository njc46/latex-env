#!/bin/bash

set -e
set +x

MESSAGE=$1
SOURCE=$2
ENTER=$3

ls -l
echo "`pwd`"

echo $MESSAGE
# source $SOURCE
eval $ENTER
make build
ls -l
