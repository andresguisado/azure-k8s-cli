#!/bin/sh
. ../functions.sh
# Set azure subscription 
az_set_subscription
# Delete ACR
az acr delete -n ${REGISTRY_NAME}