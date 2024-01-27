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

#SSH-TO-REMOTE-SERVER-SCRIPT:

echo -e "${purple}SSH-TO-REMOTE-SERVER${reset}"
printf "\n"
echo -e "${cyan}Enter the USERNAME OF THE REMOTE SERVER:${reset}"
read USERNAME
echo -e "${cyan}ENTER THE IP OF THE SERVER:${reset}"
read IP
ssh $USERNAME@$IP
echo -e "${green}LOGIN SUCCESS${reset}"
