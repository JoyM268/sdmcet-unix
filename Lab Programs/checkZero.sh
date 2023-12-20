#!/bin/bash
#checkZero.sh: Program to check wheter the given number is positive, negative or zero
echo -e "Enter a number: \c "
read num
if [ $num -eq 0 ]
then
	echo "Number is zero"
elif [ $num -gt 0 ]
then
	echo "Number is positive"
else
	echo "Number is negative"
fi
