#!/bin/bash


# Detta skript kollar om Apache2 och MySql är aktivt eller om det ligger nere!


if [ $(systemctl is-active apache2) == "active" ]
	then
		echo "Apache started:" $(date) >> /home/ubuntu/Linux-groupwork/apachelog

fi

if [[ `sudo mysqladmin ping` == "mysqld is alive" ]]
then
	echo "MySql started:" $(date) >> /home/ubuntu/Linux-groupwork/mysqllog
fi


while true
do

if [[ `sudo mysqladmin ping` != "mysqld is alive" ]] #kollar aktivt var 5:e minut om MySql ligger nere.
then
	echo "mysql is down! :" $(date) >> /home/ubuntu/Linux-groupwork/mysqllog  

fi

if [ $(systemctl is-active apache2) == "inactive" ] #Kollar aktivt var 5:e minut om apache2 ligger nere.
then
        echo "Apache is down! :" $(date)  >> /home/ubuntu/Linux-groupwork/apachelog
fi
	sleep 300
done
