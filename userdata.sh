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
aws ecr create-repository --repository-name devops-nxt-iac
dnf install wget
cd /opt/
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.89/bin/apache-tomcat-9.0.89.tar.gz
mkdir tomcat9
tar -zvxf apache-tomcat-9.0.89.tar.gz
mv apache-tomcat-9.0.89.tar.gz tomcat9
cd /tomcat9/bin
chmod +x startup.sh
sudo ./startup.sh

