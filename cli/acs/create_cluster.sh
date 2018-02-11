#!/bin/sh
# ACS
. ../functions.sh
# Set azure subscription 
az_set_subscription
# Create Resource group
az group create --name ${AZURE_RESOURCE_GROUP} --location ${LOCATION}
# Create ACS k8s cluster
az acs create -n ${CLUSTER_NAME} -g ${AZURE_RESOURCE_GROUP} --generate-ssh-keys --orchestrator-type ${ORCHESTRATOR_TYPE} 
#--service-principal ${APPID} --client-secret ${KEYID}
# Getting k8s credentials
az_acs_getcredentials
