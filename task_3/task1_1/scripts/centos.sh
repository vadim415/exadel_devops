#!/bin/bash



sudo yum remove -y docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine
sudo yum install -y yum-utils
sudo yum-config-manager  -y --add-repo  https://download.docker.com/linux/centos/docker-ce.repo
sudo yum update -y
sudo yum install -y docker-ce docker-ce-cli containerd.io
sudo usermod -a -G docker ec2-user
sudo systemctl start docker
sudo docker run hello-world
sudo docker run hello-world > /home/output.txt