#!/bin/bash
#sumIntegers.sh: Program to add two integers
echo -e "Enter First Number: \c "
read x
echo -e "Enter Second Number: \c "
read y
res=`expr $x + $y`
echo "Sum of $x + $y = $res"