#!/bin/bash
wget -qO- https://get.docker.com/ | sh
sudo apt-get -y install python-pip
sudo pip install docker-compose
usermod -aG docker ${USER}
