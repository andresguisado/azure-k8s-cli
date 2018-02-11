#!/bin/sh
# AKS
. ../functions.sh
# Set azure subscription 
az_set_subscription
# Scaling Cluster - from 3 nodes to 2
az aks scale --agent-count 2 --resource-group ${AZURE_RESOURCE_GROUP} --name ${CLUSTER_NAME}