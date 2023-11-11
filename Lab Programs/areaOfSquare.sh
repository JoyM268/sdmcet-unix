#!/bin/bash
#areaOfSquare.sh: Program to find the area of square of given size
echo -e "Enter the length of side: \c"
read a
area=`echo "$a^2" | bc`
echo "The area of square is $area"