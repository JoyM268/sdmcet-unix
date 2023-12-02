#!/bin/bash
#Q1_b.sh: Write a shell script that accepts a path name creates all the components in that path name as directories. For example, if the script is named mpc, 
#then command mpc a/b/c/d should create directories a, a/b, a/b/c, a/b/c/d.
echo "Enter the pathname" 
read p 
i=1 
j=1 
len=`echo $p | wc -c` 
while [ $i -le $len ] 
do 
    x=`echo $p | cut -d / -f $j` 
    namelength=`echo $x | wc -c` 
    mkdir $x 
    cd $x 
    pwd
    j=`expr $j + 1` 
    i=`expr $i + $namelength` 
done 