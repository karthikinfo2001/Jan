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


#TOMCAT-9-INSTALLATION-IN-AWS-LINUX-(DEFAULT-JAVA-11-INSTALLATING:
sudo yum list tom*
sudo yum install tomcat9-admin-webapps tomcat9-docs-webapp tomcat9-el-3.0-api tomcat9-jsp-2.3-api tomcat9-lib tomcat9-servlet-4.0-api tomcat9-webapps -y
sudo systemctl start tomcat9
sudo systemctl status tomcat9
echo -e "${green}TOMCAT-9-INSTALLED-IN-YOUR-SERVER.${reset}"
