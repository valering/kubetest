#!/usr/bin/env bash
set -x

# create and set path for our bin dir
WORKDIR=/root
mkdir $WORKDIR/bin
PATH=$PATH:$(pwd)/bin
echo $PATH

helm list