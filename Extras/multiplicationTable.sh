#!/bin/bash
#multiplicationTable.sh: Program to print multiplication table of n
echo -e "Enter n value: \c"
read n
i=1
while [ $i -le 10 ]
do
	echo "$n x $i = `expr $n \* $i`"
	((i++))
done