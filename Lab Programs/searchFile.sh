#!/bin/bash
#searchFile.sh: Bash script to search a given file in the current working directory, if found print the contents of the file.
echo -e "Enter the file name: \c "
read fileName
searchedFile=`ls | grep "$fileName"`
for i in $searchedFile
do
	if [ "$fileName" = "$i" ]
	then
		echo "File $fileName exists"
		echo "The contents of the file $fileName:" 
		cat $fileName
		exit 0
	fi
done
echo "File $fileName does not exist"