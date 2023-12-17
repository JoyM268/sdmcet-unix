#!/bin/bash
#reverseNumber.sh: Bash script to reverse a given number
echo -e "Enter the number: \c "
read num
temp=$num
rev=0
while [ $temp -gt 0 ]
do
	rev=`echo "($rev*10)+($temp%10)" | bc`
	temp=`expr $temp / 10`
done
echo "The reverse of the number $num is $rev"