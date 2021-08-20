#!/bin/bash

set -e
set +x

MESSAGE=$1
SOURCE=$2
ENTER=$3

echo $MESSAGE
# source $SOURCE
eval $ENTER
which pdflatex