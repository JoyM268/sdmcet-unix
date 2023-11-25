#!/bin/bash
#grep1.sh: Program to search a given pattern in a specified file
echo "Enter the pattern to be searched:"
read pname
echo "Enter the file to be used:"
read flname
echo "Searching for $pname from file $flname"
grep "$pname" $flname
echo "Selected records shown above"