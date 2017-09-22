#!/bin/bash
# add username
sudo adduser --disabled-password --gecos "" jenkins
# Add the jenkins to sudo group
usermod -aG sudo jenkins
# set password
echo "jenkins:jenkins" | chpasswd

sudo apt-get update
sudo apt-get install -y default-jre
