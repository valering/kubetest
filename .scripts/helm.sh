#!/usr/bin/env bash
set -x

echo $PATH

# create and set path for our bin dir
PATH=${PATH}:${CIRCLE_WORKING_DIRECTORY}/bin

echo $PATH

export KUBECONFIG=$CIRCLE_WORKING_DIRECTORY/.kube/config

helm list