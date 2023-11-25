#!/bin/bash
#grep2.sh: Program to search a pattern in a file specified as command line arguments
echo "Program: $0"
echo "The number of arguments specified is $#"
echo "The arguments are $*"

grep "$1" $2

echo "Job Over"