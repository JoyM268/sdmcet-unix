#!/bin/bash
#trafficSignal.sh: Program to implement traffic signal based on given colour
echo -e "Enter the colour of traffic signal: \c "
read colour
if [ $colour = r ] || [ $colour = R ]
then
	echo "Stop"
elif [ $colour = y ] || [ $colour = Y ]
then
	echo "Ready to go"
else
	echo "Go"
fi