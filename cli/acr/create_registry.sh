#!/bin/sh
. ../functions.sh
# Set azure subscription 
az_set_subscription
# Create Resource group
az group create --name ${AZURE_RESOURCE_GROUP} --location ${LOCATION}
# Create ACR
az acr create -n ${REGISTRY_NAME} -g ${AZURE_RESOURCE_GROUP} --sku ${SKU}
# Binding a service principal
#az role assignment create --scope /subscriptions/${AZURE_SUBSCRIPTION}/resourceGroups/${AZURE_RESOURCE_GROUP}/providers/Microsoft.ContainerRegistry/registries/${REGISTRY_NAME} --role Contributor --assignee ${APPID}

