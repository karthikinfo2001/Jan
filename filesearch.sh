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

#Searching the file is Available or Not:

echo "Enter your Filename:"
read filename

if [ -e "$filename"  ]; then
	echo -e " ${green}$filename Exist${reset}"
else
	echo -e "${red}File not Exist${reset}"
fi
