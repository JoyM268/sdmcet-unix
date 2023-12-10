#!/bin/bash
#copyFiles.sh: Program to copy one file to another, this operation should be performed for multiple files provided as command line arguments
i=0
n=$#
while [ $i -lt $n ]
do
    cp $1 $2
    shift 2
    i=`expr $i + 2`
done