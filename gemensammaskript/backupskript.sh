#!/bin/bash

sudo mysqldump boklista >> /home/ubuntu/Linux-groupwork/MySQLBackup."`date +"%d-%m-%Y"`"

find /home/ubuntu/Linux-groupwork/MySQLBackup.* -type f -mtime +7 -exec rm -f '{}' \;
