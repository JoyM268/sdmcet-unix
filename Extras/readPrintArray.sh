#!/bin/bash
#readPrintArray.sh: Program to read and print elements in array
echo -e "Enter the number of elements: \c"
read n
for((i=0; i < n; i++)); do
	echo -e "Enter element $(($i + 1)): \c"
	read array[$i]
done
echo -e "The contents of the array are: \c"
for i in ${array[@]}; do
	echo -e "$i \c"
done
echo