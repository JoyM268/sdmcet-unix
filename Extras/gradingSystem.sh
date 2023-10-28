#!/bin/bash
#gradingSystem.sh: Program to implement student grading system
#90-100 S, 80-89 A, 70-79 B, 60-69 C, 50-59 D, 40-49 E, 0-39 F
echo -e "Enter the marks of student: \c "
read marks
echo -e "The student's grade is: \c "
if [ $marks -ge 90 ] && [ $marks -le 100 ]
then
	echo "S"
elif [ $marks -ge 80 ]
then
	echo "A"
elif [ $marks -ge 70 ]
then
	echo "B"
elif [ $marks -ge 60 ]
then
	echo "C"
elif [ $marks -ge 60 ]
then
	echo "D"
elif [ $marks -ge 50 ]
then
	echo "E"
else
	echo "F"
fi