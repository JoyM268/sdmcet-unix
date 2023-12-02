#!/bin/bash
#Q2_a.sh: Write a shell script that accepts two file names as arguments, checks if the permissions for these files are identical and if the permission 
#are identical, output common permission and otherwise output each file name followed by its permissions.
if [ $# -eq 0 ] 
then 
    echo "arguments not entered sorry try again " 
else 
    ls -l $1 > f1 
    x=`cut -c2-10 f1` 
    echo $x 
    ls -l $2 > f2 
    y=`cut -c2-10 f2` 
    echo $y 
    echo " " 
    if [ $x = $y ] 
    then 
        echo "permission of both files are same" 
        echo $x 
    else 
        echo "permission are different" 
        echo $x 
        echo $y 
    fi 
fi