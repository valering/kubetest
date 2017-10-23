#!/usr/bin/env bash
set -x

# create and set path for our bin dir
WORKDIR=/work
mkdir $WORKDIR/bin
PATH=$PATH:$(pwd)/bin
echo $PATH

helm list