#!/bin/bash
#grep3.sh: Program to check if the pattern and file is specified as arguments or not.
if [ $# -eq 0 ] ; then
	echo "Enter the pattern to be searched:"
	read pname
	if [ -z "$pname" ] ; then
		echo "You have not entered the pattern" ; exit 1
	fi
	echo "Enter the file name to be used:"
	read flname
	if [ -z "$flname" ] ; then
		echo "You have not entered the file name" ; exit 2
	fi
	./grep2.sh "$pname" "$flname"
else
	sh grep2.sh $@
fi