#!/bin/bash
#primeOrNot.sh: Bash script to check if the given number is prime or not
echo -e "Enter the number: \c "
read n
if [ $n -lt 2 ]
then
	echo "$n is not a prime number"
	exit 0
fi
end=`echo "sqrt($n)" | bc`
flag=1 
for (( i=2; i<=$end; i++ ))
do
	if [ `expr $n % $i` -eq 0 ]
	then
		flag=0
		break
	fi
done
if [ $flag -eq 1 ]
then
	echo "$n is a prime number"
else
	echo "$n is not a prime number"
fi