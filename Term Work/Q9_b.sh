#!/bin/bash
#Q9_b.sh:Write a shell script that folds long lines into 40 columns. Thus any line that exceeds 40 characters must be broken after 40th,
#a “\” is to be appended as the indication of folding and the processing is to be continued with the residue.The input is to be supplied through
#a text file  created by the user.
echo -e "Enter the filename: \c " 
read fn 
for ln in `cat $fn` 
do 
    lgth=`echo $ln|wc -c` 
    lgth=`expr $lgth - 1` 
    s=1;e=40 
    if [ $lgth -gt 40 ] 
    then 
        while [ $lgth -gt 40 ] 
        do 
            echo "`echo $ln|cut -c $s-$e`\\" 
            s=`expr $e + 1` 
            e=`expr $e + 40` 
            lgth=`expr $lgth - 40` 
        done 
        echo $ln|cut -c $s- 
    else  
        echo $ln 
    fi
done 
echo "File folded"