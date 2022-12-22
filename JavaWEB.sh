#!/bin/bash
sudo -i
clear
echo -e "UPDATING REPOSITORS, PLEASE WAIT..."
sleep 3
apt update; 
apt upgrade -y; 
apt install wget -y; 
clear
sudo apt install openjdk-8-jre-headless openjdk-8-jdk
sudo snap install bower --classic
sudo apt install curl
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt install npm
sudo npm install -g npm@5.6.0
sudo npm install -g gulp@3.9.1
sudo apt install gradle
clear
sudo apt install git
sudo apt install postgresql pgadmin3
sudo su postgres -c psql postgres
ALTER USER postgres WITH PASSWORD 'postgres';
\q
clear
npm install .
bower install
bower update
gulp sass inject
gradle install
sudo su postgres -c psql postgres
CREATE USER mobi WITH PASSWORD 'mobi';
CREATE DATABASE mobi;
\q
sudo java -jar lombok.jar 
