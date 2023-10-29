#!/bin/bash
#rightHalfPyramid.sh: Program to print right half pyramid pattern of stars of n rows
echo -e "Enter the number of rows: \c"
read n
i=1
while [ $i -le $n ]
do
	j=1
	while [ $j -le $i ]
	do
		echo -e "*\c"
		((j++))
	done
	echo
	((i++))
done