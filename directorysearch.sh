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

#DIRECTORY IS AVAILABLE OR NOT:

echo "Enter Your Directory name:"
read directoryname

if [ -e "$directoryname" ]; then
	echo -e "${green} $directoryname Exist${reset}"
else
	echo -e "${red} $directoryname Not Exist ${reset}"
fi
