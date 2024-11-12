#!/bin/bash

# Update and install prerequisites
sudo yum update -y
sudo yum install -y curl wget git

# Install Docker
sudo amazon-linux-extras install docker -y
sudo service docker start
sudo usermod -aG docker $USER

# Enable Docker to start on boot
sudo systemctl enable docker

sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose


# Verify Docker and Docker Compose installations
echo "Verifying Docker installation..."
docker --version

echo "Verifying Docker Compose installation..."
docker-compose --version
