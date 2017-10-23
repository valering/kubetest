#!/usr/bin/env bash
set -x

# create and set path for our bin dir
PATH=$PATH:$(pwd)/bin
echo $PATH

export KUBECONFIG=/root/helmtest/.kube/config

helm list