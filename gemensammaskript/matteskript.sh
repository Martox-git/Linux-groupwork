#!/bin/bash

while [ 1 == 1 ];
do

echo "Welcome to this simple calculator!"
echo

echo "Enter your first number"
read number1

if [[ $number1 == [a-z] || [A-Z] ]];
then
	echo "Enter a number please!"
	break;
fi

echo "Enter your second number"
read number2

if [[ $number2 == [a-z] || [A-Z] ]];
then
	echo "Enter a number please!"
        break;	
fi

echo "What would you like to do, Add, Subtract, multiply or divide?"
echo
echo	"1) Add
2) Subtract
3) Multiply
4) Divide "

read choice


if [ $choice == "1" ];
then
	answer=$((number1+number2))
	echo $number1 "+" $number2 "=" $answer;

	elif [ $choice == "2" ];
	then
		answer=$((number1-number2))	
		echo $number1 "-" $number2 "=" $answer;

	elif [ $choice == "3" ];
	then
		answer=$((number1*number2))
		echo $number1 "*" $number2 "=" $answer;

	elif [ $choice == "4" ];
	then
		answer=$((number1/number2))
		echo $number1 "/" $number2 "=" $answer;
	

fi
done
	

