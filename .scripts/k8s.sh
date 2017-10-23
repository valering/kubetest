#!/usr/bin/env bash
set -x

# install curl
apt-get update && apt-get -y install curl

# create and set path for our bin dir
#WORKDIR=/root/helmtest
echo $WORKDIR
mkdir $WORKDIR/bin
PATH=$PATH:$(pwd)/bin
echo $PATH

# install kubectl
curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.7.8/bin/linux/amd64/kubectl
chmod +x kubectl
mv kubectl $WORKDIR/bin

# install helm
curl -LO https://storage.googleapis.com/kubernetes-helm/helm-v2.6.1-linux-amd64.tar.gz
tar xzf helm-v2.6.1-linux-amd64.tar.gz
mv linux-amd64/helm $WORKDIR/bin

# configure k8s
mkdir $WORKDIR/.kube
echo $KUBECONFDATA_DEV | base64 --decode --ignore-garbage > $WORKDIR/.kube/config
