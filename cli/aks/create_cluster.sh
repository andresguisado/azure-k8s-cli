#!/bin/sh
# AKS
. ../functions.sh
# Set azure subscription 
az_set_subscription
# Create Resource group
az group create --name ${AZURE_RESOURCE_GROUP} --location ${LOCATION}
# Create k8s cluster
az aks create --resource-group ${AZURE_RESOURCE_GROUP} --name ${CLUSTER_NAME} --generate-ssh-keys --kubernetes-version ${K8S_VERSION}
#--service-principal ${APPID} --client-secret ${KEYID}
# Getting k8s credentials
az_aks_getcredentials