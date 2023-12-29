#!/bin/bash
#armstrongNumbers.sh: Bash script to print all the armstrong numbers between a range
echo -e "Enter the range: \c "
read start end
for (( i=$start; i<=$end; i++ ))
do
    num=$i
    cubeSum=0
    digits=0
    while [ $num -gt 0 ]
    do
        ((digits++))
        num=`expr $num / 10`
    done
    num=$i
    while [ $num -gt  0 ]
    do
        cubeSum=`echo "$cubeSum+(($num%10)^$digits)" | bc`
        num=`expr $num / 10`
    done
    if [ $cubeSum -eq $i ]
    then
        echo -e "$i \c "
    fi
done
echo
