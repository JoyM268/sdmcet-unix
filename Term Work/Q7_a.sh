#!/bin/bash
#Q7_a.sh:Write a shell script that gets executed displays the message either "Good Morning" or "Good Afternoon" or "Good Evening" depending upon time 
#at which the user logs in.
hournow=`date | cut -c 12-13` 
echo $hournow  
echo $LOGNAME 
case $hournow in 
    [0-1][0-1]|0[2-9])echo "good morning Mr/Ms: $LOGNAME";; 
    1[2-9])echo "good after noon Mr/Ms: $LOGNAME";; 
    1[6-9])echo "good Evening Mr/Ms: $LOGNAME";; 
    *)echo "good Night Mr/Ms: $LOGNAME";; 
esac