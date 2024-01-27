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


echo -e "${cyan}Enter the username:${reset}"
read username
cd /home/$username/
echo -e "${cyan}TOMCAT-9-TAR-INSTALLATION-STARTING......${reset}"
/home/$username/wget "https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.84/bin/apache-tomcat-9.0.84.tar.gz"
/home/$username/tar -xvzf apache-tomcat-9.0.84.tar.gz
mv /home/$username/apache-tomcat-9.0.84 /home/$username/tomcat-9
/home/$username/tomcat-9/bin/startup.sh
echo -e "${green}TOMCAT-9 STARTED in this below:${reset}"
echo -e "${green}$(curl -s ifconfig.me):8080${reset}"
