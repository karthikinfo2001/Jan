#!/bin/bash

#COLOR-CODES-SETUP
black='\033[0;30m'
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
blue='\033[0;34m'
purple='\033[0;35m'
cyan='\033[0;36m'
white='\033[0;37m'
grey='\033[0;90m'
reset='\033[0m'

#JENKINS-INSTALLATION-IN-AWS:

echo -e "${yellow}Starting the jenkins installation in aws.........${reset}"
echo -e "${purple}PLEASE ENTER YOUR PUBLIC_IP:${purple}"
read PUBLIC_IP
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
echo -e "${cyan}INSTALLING JAVA-17-amazon-aws........{reset}"
sudo yum install java-17-amazon-corretto.x86_64 -y
echo -e "${green}$(sudo yum install jenkins -y)${reset}"
echo -e "${green}JENKINS INSTALLED SUCCESSFULLY${reset}"
echo -e "${yellow}CHECKING THE FIREWALLD.....${reset}"
sudo yum install firewalld -y
sudo systemctl stop firewalld
sudo systemctl status sirewalld
sudo systemctl start jenkins
sleep 5
echo "Below is the URL FOR JENKINS CONSOLE"
echo -e "${green}http:$PUBLIC_IP:8080${reset}"
echo -e "${yellow}BELOW IS THE INITIAL LOGIN PASSWORD${reset}"
echo -e "${green}$(sudo cat /var/lib/jenkins/secrets/initialAdminPassword)${reset}"
