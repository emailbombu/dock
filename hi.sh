#!/bin/bash


sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb https://download.docker.com/linux/ubuntu hirsute stable"
sudo apt install docker-ce
sudo usermod -aG docker shell
docker pull ubuntu:hirsute

#Enter Da Docker
docker run -it ubuntu:hirsute
apt update
apt distupgrade && apt install git sudo nano
adduser user --disabled-password
echo "user    ALL=(ALL) NOPASSWD:ALL" >>/etc/sudoers

#Open New terminal
docker ps
docker commit f778f00cb8db flytime/shack:v1
docker login
docker push flytime/shack:v1

