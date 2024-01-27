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


#MATHEMATICAL-CALCULATIONS:
echo "Enter the value1:"
read value1
echo "Enter the value2:"
read value2

result_addition=$(($value1 + $value2))
result_subtraction=$(($value1 - $value2))
result_multiplication=$(($value1 * value2))
result_division=$((value1 / value2))
echo -e "The ADDITION OF TWO NUMBERS IS:${green}$result_addition${reset}"
echo -e "The SUBTRACTION OF TWO NUMBERS IS:${red}$result_subtraction${reset}"
echo -e "The MULTIPLICATION OF TWO NUMBER IS:${yellow}$result_multiplication${reset}"
echo -e "The DIVISION OF TWO NUMBER IS:${cyan}$result_division${reset}"
