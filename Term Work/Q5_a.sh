#!/bin/bash
# Q5_a.sh:Write a shell script that accepts as filename as argument and display its creation time if file exist and if it does not send output error message.
if [ $# -eq 0 ]
then
    echo "Argument is not entered"
else 
    ls -l $1 > t1 
    x=`cut -c 33- t1` 
    echo $x 
fi