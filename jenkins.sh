#!/bin/bash
apt update
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
apt update
sudo apt install jenkins
systemctl start jenkins
echo "copy your root password"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
echo "end"