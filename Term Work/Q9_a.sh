#!/bin/bash
#Write a shell script that accept the file name,starting and ending line number as an argument and display all the lines between the given line number.
if [ $# -ne 3 ] 
then 
    echo "invalid number of arguments" 
    exit 
fi 
c=`cat $1 | wc -l` 
if [ $2 -le 0 -o $3 -le 0 -o $2 -gt $3 -o $3 -gt $c ] 
then 
    echo "invalid input" 
    exit 
fi 
sed -n "$2,$3 p" $1