#!/bin/bash
#areaOfTriangle.sh: Program to find area of triangle when 3 sides are given
echo -e "Enter the length of three sides(a, b, c): \c"
read a b c
s=`echo "scale=3;($a+$b+$c)/2" | bc`
area=`echo "sqrt(($s*($s-$a)*($s-$b)*($s-$c)))" | bc`
echo "The area of triangle is $area"