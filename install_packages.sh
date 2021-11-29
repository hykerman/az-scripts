#!/bin/bash

#-------------------------------------------------------------------------------------------------------
# Custom script extension for Azure Linux VM creation that installs Docker, Docker-Compose and Azure CLI
#-------------------------------------------------------------------------------------------------------

sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common gnupg-agent gnupg2 pass

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt-get update
sudo apt-get install -y docker-ce
sudo apt-get update
sudo apt-get install -y docker-compose
sudo apt-get update
curl -sL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/microsoft.asc.gpg > /dev/null
echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/azure-cli.list
sudo apt-get update
sudo apt-get install -y azure-cli
sudo apt-get update