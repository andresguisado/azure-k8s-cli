#!/bin/sh
# AKS
. ../functions.sh
# Set azure subscription 
az_set_subscription
# Upgrading cluster to 1.9.1 version
az aks upgrade --kubernetes-version 1.9.1 --resource-group ${AZURE_RESOURCE_GROUP} --name ${CLUSTER_NAME}