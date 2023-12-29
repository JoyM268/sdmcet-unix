#!/bin/bash
# Write a shell script that determine the period for which a specified user is working on system and display appropriate message. 
#system and display appropriate message. 
echo "Enter the login name of a user" 
read name 
userinfo=`who | grep -w "$name" | grep "pts"` 
echo $userinfo 
if [ $? -ne 0 ] 
then 
    echo "$name is not logged-in yet" 
    exit 
fi 
hrs=`echo "$userinfo" | cut -c 34-35` 
echo "Login time " $hrs 
min=`echo "$userinfo" | cut -c 37-38` 
echo "Login Min" $min 
hrnow=`date | cut -c 12-13` 
echo "Current hrs" $hrnow 
minnow=`date | cut -c 15-16` 
echo "Current Min" $minnow 
if [ $minnow -lt $min ] 
then 
    minnow=`expr $minnow + 60`
    hrnow=`expr $hrnow - 1` 
fi 
hour=`expr $hrnow - $hrs` 
minutes=`expr $minnow - $min` 
echo "Mr/Ms:$name is working since $hour hrs-$minutes minutes"