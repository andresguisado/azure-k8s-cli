#!/bin/sh
# AKS
. ../functions.sh
# Set azure subscription 
az_set_subscription
# Delete k8s cluster
az group delete --name ${AZURE_RESOURCE_GROUP} --yes --no-wait
# Remove k8s context from kubeconfig file
cleaning_k8s_context