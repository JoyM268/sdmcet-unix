#!/bin/bash
#TriangleClassifier.c: Program to read 3 sides of a triangle and print the type of the triangle
echo -e "Enter the 3 sides of triangle \c "
read a b c
if [ $a -eq $b ] && [ $b -eq $c ]
then
	echo "The triangle is an equilateral triangle"
elif [ $a -eq $b ] || [ $b -eq $c ] || [ $c -eq $a ]
then
	echo "The triangle is an isosceles triangle"
else
	echo "The triangle is a scalene triangle"
fi