#!/bin/bash
dnf install java-17-amazon-corretto -y
echo "Java version " java -version
sudo dnf install docker -y
sudo dnf install git -y
sudo dnf install maven -y
git clone https://github.com/shivanbgtsi/devops-nxt.git
cd devops-nxt
mvn clean install
sudo docker build  -f Dockerfile .
cd target
java -jar devops-nxt-poc.jar
