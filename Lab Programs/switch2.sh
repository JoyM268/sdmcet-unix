#!/bin/bash
#switch2.sh: Program to display today's day
day=`date | cut -d" " -f 1`
case $day in
Sun) echo "Today's day is Sunday" ;;
Mon) echo "Today's day is Monday" ;;
Tue) echo "Today's day is Tuesday" ;;
Wed) echo "Today's day is Wednesday" ;;
Thur) echo "Today's day is Thursday" ;;
Fri) echo "Today's day is Friday" ;;
Sat) echo "Today's day is Saturday" ;;
*) echo "Invalid day" ;;
esac