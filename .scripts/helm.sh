#!/usr/bin/env bash
set -x

echo $KUBECONFIG

# create and set path for our bin dir
PATH=$PATH:$(pwd)/bin
export KUBECONFIG=$CIRCLE_WORKING_DIRECTORY/.kube/config

helm list