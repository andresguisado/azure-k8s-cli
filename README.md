# Azure-k8s-cli
Bash repo to create ACI, ACS, AKS and ACR by AZURE CLI 2.0.

**Dependencies**, you need to install the following software in order to be able to use this code:

- Install and configure Azure CLI 2.0.0 :
 -https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest
- Install kubectl client :
 -https://kubernetes.io/docs/tasks/tools/install-kubectl/
 
## Getting Started

- Clone the project locally: `git clone <git_url>`
- Create env.sh file as follows:

```
#!/bin/sh
#### MANDATORIES ENV VARS ##
export AZURE_SUBSCRIPTION=XXXXXXXXXXXXXX
export LOCATION=westeurope
export AZURE_RESOURCE_GROUP=example-k8s-westeu-poc
export CLUSTER_NAME=k8s-cluster-poc
export K8S_VERSION=1.8.1  # Example: 1.8.1
########################

## JUST for ACS ########
export ORCHESTRATOR_TYPE=kubernetes
########################

## JUST for ACR #########
export REGISTRY_NAME=examplek8spocwesteu
export SKU=Basic
#########################

# Optional -SERVICE PRINCIPAL  ####
#export APPID=XXXXXXXXXX
#export KEYID=XXXXXXXXXX
#export TENANT=XXXXXXXXX
########################
```

 ```
 source envs.sh
 ``` 
- Choose your Azure Container flavor (aks or acs): 
``` 
cd azure-k8s-cli/cli/aks 
or 
cd azure-k8s-cli/cli/acs
```
 > **Note:** You can create an **Azure Container Registry** by  ```cd azure-k8s-cli/cli/acr``` then ```sh create_registry.sh```.
 > 
- Run `sh create_cluster.sh`.
- You can delete, upgrade and scale your cluster using the scripts at the same level than ```create_cluster.sh```.
