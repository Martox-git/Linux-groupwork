#!/bin/bash


if [[ `sudo mysqladmin ping` != "mysqld is alive" ]] #kollar aktivt var 5:e minut via crontab om MySql ligger nere.
then
        systemctl start apache2
fi

if [ $(systemctl is-active apache2) == "inactive" ] #Kollar aktivt var 5:e minut via crontab om apache2 ligger nere.
then
        systemctl start mysql
fi
        

