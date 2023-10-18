#!/bin/bash
#stingCompare.sh: Program to compare two strings
echo -e "Enter input string 1: \c"
read str1
echo -e "Enter input string 2: \c"
read str2

if [ "$str1" = "$str2" ]; then
  echo "The strings are equal."
else
  echo "The strings are not equal."
fi