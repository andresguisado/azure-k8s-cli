#!/bin/sh

az_set_subscription ()
{
    az account set --subscription ${AZURE_SUBSCRIPTION}
}

az_aks_getcredentials ()
{
    az aks get-credentials --name ${CLUSTER_NAME} --resource-group ${AZURE_RESOURCE_GROUP}
}

az_acs_getcredentials ()
{
    az acs kubernetes get-credentials --name ${CLUSTER_NAME} --resource-group ${AZURE_RESOURCE_GROUP}
}

cleaning_k8s_context ()
{
    kubectl config use-context minikube
    kubectl config delete-cluster ${CLUSTER_NAME}
    kubectl config delete-context ${CLUSTER_NAME}
    kubectl config unset users.clusterUser_${AZURE_RESOURCE_GROUP}_${CLUSTER_NAME}
}

    