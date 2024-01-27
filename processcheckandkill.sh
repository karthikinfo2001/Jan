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

#GETTING THE PROCESS YOU WANT TO CHECK:

echo -e "${cyan}Enter the processname you want to check:${reset}"
read processname

if  pgrep -x $processname &>/dev/null; then
	pid=$(pgrep -x $processname)
	echo -e "${yellow}The $processname is started killing now.....${reset}"
	echo "....................................."
	echo "....................................."
	printf "\n"
	sudo kill -9 $pid &>/dev/null
	sleep 3
	echo -e "${green}The $processname killed SUCCESSFULLY${reset}"
else
	echo -e "${red}$processname is not running${reset}"
fi
