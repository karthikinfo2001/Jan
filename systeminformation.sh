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

#SYSTEM-INFORMATION-SCRIPT:
printf "\n"
echo -e "${cyan}OPERATING-SYSTEM:${reset} ${green}$(uname)${reset}"
printf "\n"
echo -e "${cyan}TOTAL-SYSTEM-STORAGE-IN-GB:${reset} ${green}$(lsblk | awk 'NR==2 {print $4}')${reset}"
printf "\n"
echo -e "${cyan}DATE:${reset} ${green}$(date +'%d-%B-%Y')${reset}"
printf "\n"
echo -e "${cyan}CURRENT-USER:${reset} ${green}$(whoami)${reset}"
printf "\n"
echo -e "${cyan}UPTIME:${reset} ${green}$(uptime -p)${reset}"
printf "\n"
echo -e "${cyan}HOSTNAME:${reset} ${green}$(hostname)${reset}"
printf "\n"
echo -e "${cyan}PUBLIC-IP:${reset} ${green}$(curl -s ifconfig.me)${reset}, ${cyan}PRIVATE-IP:${reset} ${green}$(ifconfig | head | awk 'NR==2 {print $2}')${reset}"
printf "\n"
echo -e "${cyan}TIME:${reset} ${green}$(date | awk 'NR==1 {print $4,$5}')${reset}"
printf "\n"
echo -e "${cyan}Present-Working-Directory:${reset}${green}$(pwd)${reset}" 
