#!/bin/bash
#Q6_b.sh: Write a shell script to list all the files in a directory whose filename is at least 10 characters. (use expr command to check the length) 
if [ $# -eq 0 ] 
then 
    echo "Enter directory name as argument"
else 
    c=`ls -l $* | tr -s ' ' | cut -d' ' -f 9`    
    echo -e "Filename are $c\n" 
    for i in $c 
    do 
        len=`expr "$i" : '.*'` 
        if [ $len -ge 10 ] 
        then 
            echo "$i having $len characters" 
        fi 
    done 
fi