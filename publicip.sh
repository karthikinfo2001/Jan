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

#SCRIPT-FOR-PUBLIC-IP
a=$(curl -s ifconfig.me)
echo -e "This is my PUBLIC IP: ${green}$a${reset}"
