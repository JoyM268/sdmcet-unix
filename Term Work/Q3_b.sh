#!/bin/bash
#Q3_b.sh: Create a script file called file-properties that reads a file name entered and outputs it properties.
echo "Enter a file name:" 
read file 
if [ -f $file ] 
then 
    set -- `ls -l $file` 
    echo "File permission: $1" 
    echo "Number of links: $2" 
    echo "User name: $3" 
    echo "Group name: $4" 
    echo "Filesize : $5 bytes" 
    echo "Date of modification: $6 $7" 
    echo "time of modification: $8" 
    echo "Name of file: $9" 
else 
    echo "File does not exist" 
fi