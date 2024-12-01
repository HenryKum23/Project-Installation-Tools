#!/bin/bash

sudo apt-get update
sudo apt-get install docker.io -y
sudo usermod -aG docker $USER   #my case is ubuntu
newgrp docker
sudo chmod 777 /var/run/docker.sock


Installing and running SonarQube as a container in docker 
docker run -d --name sonar -p 9000:9000 sonarqube:lts-community
