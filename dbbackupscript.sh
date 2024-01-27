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


#DB-BACKUP-SCRIPT:

bkp_date=$(date +%Y-%B-%d_%H:%M-%p)
cd /home/backup
echo "School DB backup Process started $bkp_date" >> /home/ec2-user/backupdaily_pg_backup_script.log
/usr/local/pgsql/bin/pg_dump -h localhost -p 5432 -U postgres -F c -b -v -f /home/ec2-user/backup/school_$bkp_date.sql school
echo "School DB backup Process completed $bkp_date" >> /home/ec2-user/backupdaily_pg_backup_script.log
