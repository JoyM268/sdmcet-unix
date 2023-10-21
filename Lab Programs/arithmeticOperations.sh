#!/bash/bin
#arithmeticOperations.sh: Program to perform addition, division, multiplication and subtraction on two integers
echo -e "Enter two integers: \c "
read num1 num2
sum=`expr $num1 + $num2`
diff=`expr $num1 - $num2`
prod=`expr $num1 \* $num2`
div=`expr $num1 / $num2`
echo "Sum of $num1 + $num2 = $sum"
echo "Difference of $num1 - $num2 = $diff"
echo "Product of $num1 * $num2 = $prod"
echo "Quotient of $num1 / $num2 = $div"