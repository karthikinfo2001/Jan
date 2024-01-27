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

#FIREWALL STATUS CHECK SCRIPT:

a=$(sudo systemctl status firewalld | grep 'Active:' | awk '{print $2, $3}')

# Echo the status for debugging (optional)
echo "Firewalld status: $a"

# Check if firewalld is inactive (dead)
if [ "$a" == "inactive (dead)" ]; then
    echo -e "${red}The firewalld is inactive (dead)${reset}"
else
    echo -e "${green}The firewalld is active (running)${reset}"
fi
