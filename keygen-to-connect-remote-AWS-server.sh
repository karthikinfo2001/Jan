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

echo "PLEASE ENTER YOUR USERNAME OF THE REMOTE HOST:"
read USERNAME
echo "PLEASE ENTER YOUR IP ADDRESS OF THE REMOTE HOST:"
read IPADDRESS
echo "PLEASE ENTER YOUR CURRENT USER:"
read USER

echo "CREATING A NEW KEY PAIR FOR BOTH PUBLIC AND PRIVATE KEYS IN THE PATH: /home/$USER/.ssh/id_rsa, /home/$USER/.ssh/id_rsa.pub"
echo -e "${yellow}Press enter for 3 times${reset}"
ssh-keygen

echo "Setting correct permissions for local keys..."
chmod 700 /home/$USER/.ssh
chmod 600 /home/$USER/.ssh/id_rsa
chmod 644 /home/$USER/.ssh/id_rsa.pub
sleep 4
echo -e "${yellow}$(sudo cat /home/ec2-user/.ssh/id_rsa.pub)${reset}"
printf "\n\n\n"
sleep 5
echo -e "${green}COPY THE ABOVE CONTENT OF THE /home/$USER/.ssh/ID_RSA.PUB To >> REMOTE HOST OF THE AWS INSTANCE YOU WANT TO SSH IN /home/$USERNAME/.ssh/authorized_keys PASTE THE CONTENT BELOW OF THE FILE INSIDE.${reset}"
