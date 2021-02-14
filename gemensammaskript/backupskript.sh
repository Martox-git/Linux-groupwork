#!/bin/bash

mysqldump -u 'chrippe' -p boklista > /home/ubuntu/Linux-groupwork/gemensammaskript/MySQLBackup."`date +"%d-%m-%Y"`"

find /home/ubuntu/Linux-groupwork/gemensammaskript/MySQLBackup.* -type f -mtime +7 -exec rm -f '{}' \;
