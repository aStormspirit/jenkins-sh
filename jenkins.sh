#!/bin/bash
sudo apt update
sudo wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get install openjdk-11-jdk
sudo apt update
sudo apt install jenkins
sudo systemctl start jenkins
echo "copy your root password"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
echo "end"