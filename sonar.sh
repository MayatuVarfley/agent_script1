#!/bin/bash

#Author :
#Date :


if

 [ ${USER} = root ]

then

echo -e "\n You can't be root to run this!\n "
exit 100
fi
sleep 3

sudo yum update -y
sudo yum install java-11-openjdk-devel -y
sudo yum install java-11-openjdk -y
sleep 5
cd /opt
sudo yum install wget -y
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip
sudo unzip /opt/sonarqube-9.3.0.51899.zip
sudo yum install unzip -y
sudo unzip /opt/sonarqube-9.3.0.51899.zip
sudo chow -R vgant:vagrant /opt/narqbe-9.3.0.51899

cd /opt/sonarqub-9.3.0.51899/bin/linux-x86-64/
./sonar.sh start
sleep

sudo systemctl start firewalld
sudo systemctl enable firewalld
sudo firewall-cmd --permanent --add-port=9000/tcp
sudo firewall-cmd --reload
