#!/bin/bash
#Write a shell script which accepts valid log in names as arguments and prints their corresponding home directories, if no arguments are specified, print a suitable error message
y=$#
i=1
if [ $y -eq 0 ]
then
    echo "arguments are not entered"
else
    while [ $i -le $y ]
    do
        loginname=$1
        grep $loginname /etc/passwd > s
        if [ $? -eq 0 ]
        then
            echo "loginname:$loginname"
            echo "home directory"
            cut -d ":" -f 6 s
        fi
    shift
    i=`expr $i + 1`
    done
fi