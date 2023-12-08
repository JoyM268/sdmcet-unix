#!/bin/bash
#Q1_a.sh: Write a shell that takes a valid directory name as an 1 argument and recursively descend all the subdirectories, finds the maximum length 
#of any file in that hierarchy and writes this maximum value to the standard output
for i in $* 
do 
	if [ -d $i ] 
	then 
		echo "Large filename size is" 
		echo `ls -Rl $i | grep "^-" | tr -s ' ' | cut -d' ' -f 5,9 | sort -n | tail -1` 
	else 
		echo "Not directory" 
	fi 
done