#!/bin/bash



if [[ `mysqladmin ping` != "mysqld is alive" ]]
then
	echo "mysql is down!" 
	fi
