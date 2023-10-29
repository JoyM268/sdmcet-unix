#!/bin/bash
#leftHalfPyramid.sh: Program to print left half pyramid pattern of stars of n rows
echo -e "Enter the number of rows: \c"
read n
i=1
while [ $i -le $n ]
do
	j=$n
	while [ $j -gt $i ]
	do
		echo -e " \c"
		((j--))
	done
	j=1
	while [ $j -le $i ]
	do
		echo -e "*\c"
		((j++))
	done
	echo
	((i++))
done