#!/bin/bash

sudo yum update -y
sudo yum search docker
sudo yum info docker
sudo yum install -y docker
sudo systemctl enable docker.service
sudo systemctl start docker.service
sudo systemctl status docker.service
docker --version
sudo yum install git -y
sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
