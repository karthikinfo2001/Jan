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

#LOGIN-SCRIPT:

echo "Enter your username:"
read username

if [ "$username" == "karthik" ]; then
    echo -e "${yellow}Enter your password:${reset}"
    read password

    if [ "$password" == "karthik" ]; then
        echo -e "${green}Login success${reset}"
    else
        echo -e "${red}Login failed. Please check the username and password.${reset}"
    fi

else
    echo -e "${red}Login failed. Please check the username and password.${reset}"
fi
