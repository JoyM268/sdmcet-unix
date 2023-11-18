#!/bin/bash
#fahrenheitToCelsius.sh: Program to convert given fahrenheit to celsius
echo -e "Enter temperature in fahrenheit: \c "
read far
cel=`echo "scale=3;5/9*($far-32)" | bc`
echo "The temperature in celsius is $cel"