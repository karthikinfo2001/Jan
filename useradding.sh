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

# USER-ADDING-SCRIPT:

echo -e "${cyan}Enter the username you want to add:${reset}"
read username

if id "$username" &>/dev/null; then
    echo -e "${red}The $username already exists. Use a different username${reset}"
else
    sudo useradd $username &>/dev/null

    if [ $? -eq 0 ]; then
        echo -e "${cyan}Enter the password for $username:${reset}"
        read -s password
        echo $username:$password | sudo chpasswd
        echo -e "${green}User $username created with password successfully.${reset}"
    else
        echo -e "${red}$username not created.${reset}"
fi
fi
