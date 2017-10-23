#!/usr/bin/env bash
set -x

# create and set path for our bin dir
pwd
WORKDIR=/root/helmtest
mkdir $WORKDIR/bin
PATH=$PATH:$(pwd)/bin
echo $PATH

helm list