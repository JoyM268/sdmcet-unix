#!/bin/bash
#sumIntegers.sh: Program to add two integers
echo -e "Enter two integers: \c "
read num1 num2
sum=`expr $num1 + $num2`
echo "Sum of $num1 + $num2 = $sum"