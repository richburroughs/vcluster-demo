

#! /bin/bash

export CLUSTER_NAME=vcluster
export CLUSTER_NAMESPACE=vcluster
export KUBERNETES_VERSION=1.23.0
export HELM_VALUES=""
# Uncomment if you want to use vcluster values
# export HELM_VALUES=$(cat devvalues.yaml | sed -z 's/\n/\\n/g')
kubectl create namespace ${CLUSTER_NAMESPACE}
clusterctl generate cluster ${CLUSTER_NAME} \
    --infrastructure vcluster \
    --kubernetes-version ${KUBERNETES_VERSION} \
    --target-namespace ${CLUSTER_NAMESPACE} | kubectl apply -f -


