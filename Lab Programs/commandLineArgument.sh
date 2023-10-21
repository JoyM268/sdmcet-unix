#!/bin/bash
#commandLineArgument.sh: Program to illustrate using of command line arguments
num1=$1
num2=$2
sum=`expr $num1 + $num2`
diff=`expr $num1 - $num2`
prod=`expr $num1 \* $num2`
div=`expr $num1 / $num2`
echo "Sum of $num1 + $num2 = $sum"
echo "Difference of $num1 - $num2 = $diff"
echo "Product of $num1 * $num2 = $prod"
echo -e "Quotient of $num1 / $num2 = $div\n"
echo "Command line arguments are: $*"
echo "No. of command line arguments: $#"
echo "Name of the file: $0"