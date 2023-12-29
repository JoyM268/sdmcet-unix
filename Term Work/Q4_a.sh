#!/bin/bash
#Q4_a.sh:Write a shell script that accept one or more filenames as argument and convert all of them to uppercase, provided they exist in current directory.
y=$# 
if [ $y -le 0 ] 
then
    echo "Argument is not entered" 
else 
    for file in $* 
    do 
        echo "$file" 
        n=`echo -n "$file" | tr "[a-z]" "[A-Z]"` 
        mv "$file" "$n" 
        echo "$n" 
    done 
fi