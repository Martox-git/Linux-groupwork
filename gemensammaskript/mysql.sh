#!/bin/bash

# kollar ifall MYSQL har gått ned

if [[ `mysqladmin ping` != "mysqld is alive" ]]
then
	echo "mysql is down!" 
	fi
