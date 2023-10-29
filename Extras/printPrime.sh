#!/bin/bash
#printPrime.sh: Program to print prime numbers between n1 and n2
echo -e "Enter the range(n1 and n2): \c"
read n1 n2
i=$n1
while [ $i -le $n2 ]
do
	if [ $i -le 1 ]
	then
		((i++))
		continue
	fi
	j=2
	prime=1
	while [ $j -lt $i ]
	do
		if [ `expr $i % $j` -eq 0 ]
		then
			prime=0
			break
		fi
		((j++))
	done
	if [ $prime -eq 1 ]
	then
		echo -e "$i \c"
	fi
	((i++))
done
echo