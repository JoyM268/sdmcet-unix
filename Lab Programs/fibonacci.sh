#!/bin/bash
#fibonacci.sh: Bash script to print n terms in fibonacci series
echo -e "Enter the number of terms: \c "
read n
if [ $n -lt 1 ]
then
	echo "Invalid number of terms"
	exit 0
fi
if [ $n -eq 1 ]
then
	echo -e "0 \c "
else
	echo -e "0 1 \c "
	firstTerm=0
	secondTerm=1
	for (( i=3; i<=$n; i++ ))
	do
		thirdTerm=`expr $firstTerm + $secondTerm`
		echo -e "$thirdTerm \c "
		firstTerm=$secondTerm
		secondTerm=$thirdTerm
	done
fi
echo