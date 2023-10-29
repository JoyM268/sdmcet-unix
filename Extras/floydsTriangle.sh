#!/bin/bash
#floydsTriangle.sh: Program to print floyd's triange of n rows
echo -e "Enter the number of rows: \c"
read n
i=1
k=1
while [ $i -le $n ]
do
	j=1
	while [ $j -le $i ]
	do
		echo -e "$k \c"
		((k++))
		((j++))
	done
	echo
	((i++))
done