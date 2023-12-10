#!/bin/bash
#switch1.sh: Program to display if the input is a lowercase, uppercase or number.
echo "Enter the input:"
read input
case $input in
[A-Z]) echo "Uppercase" ;;
[a-z]) echo "Lowercase" ;;
[0-9]) echo "Number" ;;
*) echo "Invalid input" ;;
esac