#!/bin/sh
# ACS
. ../functions.sh
# Set azure subscription 
az_set_subscription
# Scaling cluster - from 3 nodes to 2
az acs scale -g ${AZURE_RESOURCE_GROUP}  -n ${CLUSTER_NAME} --new-agent-count 2