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

#POSTGRESQL-15-YUM-INSTALLATION:

echo -e "${yellow}POSTGRESQL-15-YUM-INSTALLATION-STARTED:${reset}"
 sudo yum install postgresql15-contrib.x86_64 -y
 sudo yum install postgresql15-docs.x86_64 -y
 sudo yum install postgresql15-server-devel.x86_64 -y
 sudo yum install postgresql15.x86_64 -y
 sudo yum install postgresql15-server.x86_64 -y
 sudo yum update -y
 sudo yum install firewalld -y
 sudo systemctl stop firewalld
 sudo systemctl status firewalld
 sudo useradd postgres
 postgres=postgres
 sudo passwd $postgres
 sleep 3
 sudo mkdir -p /var/lib/pgsql/data
 sudo chown -R postgres:postgres /var/lib/pgsql/
 echo "/usr/bin/pg_ctl -D /var/lib/pgsql/data -l logfile start" > /var/lib/pgsql/startup.sh
 sudo chomod 777 /var/lib/pgsql/startup.sh
 echo "${green}$(/usr/bin/initdb -D /var/lib/pgsql/data)${reset}"
 echo -e "/usr/local/pgsql/bin/psql -U postgres    ====> TO CONNECT AFTER LOGGED AS POSTGRES USER"
 echo -e "${green}$(psql -V)${reset}"
 su - postgres
 read $postgres
 cd /var/lib/pgsql/data/
 sudo usr/bin/initdb -D /var/lib/pgsql/data
 sudo /usr/bin/pg_ctl -D /var/lib/pgsql/data -l logfile start
 echo -e "${green}POSTGRESQL-15-INSTALLATION-COMPLETED AND CONNECTED NOW:${reset}"
 sudo systemctl start postgresql.service
 psql -U postgres -d postgres
