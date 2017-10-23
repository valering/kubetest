#!/usr/bin/env bash
set -x

# create and set path for our bin dir
PATH=$PATH:$(pwd)/bin
export KUBECONFIG=$KUBECONFIG

helm list