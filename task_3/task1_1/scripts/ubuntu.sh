#!/bin/bash


sudo apt update -y && sudo apt upgrade -y
sudo apt install-y vim net-tools wget gnupg-agent gnupg lsb-release  apt-transport-https ca-certificates curl software-properties-common 

sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

sudo apt-get update
 $ sudo apt-get install docker-ce docker-ce-cli containerd.io
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
#https://github.com/docker/compose/releases/download/1.29.2/docker-compose-Linux-x86_64
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-Linux-x86_64" -o /usr/bin/docker-compose
sudo chmod +x /usr/bin/docker-compose
