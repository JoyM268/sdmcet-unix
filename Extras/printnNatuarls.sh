#!/bin/bash
#printnNaturals.sh: Program to print first n natural numbers
echo -e "Enter the value of n: \c"
read n
i=1
while [ $i -le $n ]
do
	echo -e "$i \c"
	let "i+=1"
done
echo