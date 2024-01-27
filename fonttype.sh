#!/bin/bash


bold=$(tput bold)
normal=$(tput sgr0)
red=$(tput setaf 1)
green=$(tput setaf 2)

#FONT-STYLE-CHECK
echo "${bold}This is ${red}bold red${normal} and this is ${green}bold green${normal}."
