#!/bin/bash

#get GPG key
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 20691eec35216c63caf66ce1656408e390cfb1f5
#create a sources list file
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
#reload package database
sudo apt-get update
#install Mongo
sudo apt-get install -y mongodb-org
#start mongo
systemctl enable mongod.service
sudo service mongod start