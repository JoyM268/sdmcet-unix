#!/bin/bash
#copyFiles.sh: Program to copy one file to another, this operation should be performed for multiple files provided as command line arguments
i=1
n=$#
while [ $i -le $n ]
do
    cp $1 $2
    shift 2
    i=`expr $i + 2`
done