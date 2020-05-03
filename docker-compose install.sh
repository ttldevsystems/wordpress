#!/bin/bash

yum install docker -y
docker --version 

# start docker services
service docker start
service docker status

#Create a user called dockeradmin
useradd dockeradmin
#passwd dockeradmin

#add a user to docker group to manage docker

usermod -aG docker dockeradmin

sudo curl -L https://github.com/docker/compose/releases/download/1.21.0/docker-compose-`uname -s`-`uname -m` | sudo tee /usr/local/bin/docker-compose > /dev/null

sudo chmod +x /usr/local/bin/docker-compose
ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
