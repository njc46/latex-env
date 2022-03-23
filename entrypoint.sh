#!/bin/bash

set -e
set +x

MESSAGE=$1
ENTER=$2

ls -l
echo "`pwd`"

echo $MESSAGE
eval $ENTER
ls -l
