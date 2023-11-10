#!/bin/bash
#areaOfRectangle.sh: Program to find the area of rectangle
echo -e "Enter the length: \c"
read length
echo -e "Enter the breadth: \c"
read breadth
area=`echo "$length*$breadth" | bc`
echo "The area of rectangle is $area"