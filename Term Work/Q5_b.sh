#!/bin/bash
#Q5_b.sh:Write a shell script to display the calendar for current month with current date replaced by * or ** depending on whether the date has one digit or two digits
set `date`
if [ $3 -le 9 ]
then
    n=`cal | tail -n +3 | grep -n "$3" | cut -d':' -f 1 | head -n 1`
    n=`expr $n + 2`
    cal | sed "$n s|$3|*|"
else
    cal | sed "s|$3|**|"
fi