#!/bin/bash
#evenOdd.sh: Program to check wheter the given number is even or odd
echo -e "Enter a number: \c "
read number
rem=`expr $number % 2`
if [ $rem -eq 0 ]
then
	echo "The number is even"
else
	echo "The number is odd"
fi