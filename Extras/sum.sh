#!/bin/bash
#sum.sh: Program to sum two numbers
echo -e "Enter two numbers: \c"
read x y
sum=$(($x+$y))
echo "The sum of $x and $y is $sum"