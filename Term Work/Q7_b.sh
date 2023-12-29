#!/bin/bash
#Write a shell script that accept a list of filenames as its argument, count and report occurrence of each word than is present in the first argument file 
#on other argument files.
if [ $# -lt 2 ] 
then 
    echo "usage:wdcnt wordfile filename1 filename2. ...... " 
exit 
fi 
for word in `cat $1` 
do 
    for file in $* 
    do 
        if [ "$file" != "$1" ] 
        then 
            echo "the word frequency of --$word--in file $file is: `grep -iow "$word" $file | wc -w`" 
        fi 
    done 
done