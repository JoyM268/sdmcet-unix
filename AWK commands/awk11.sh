#AWK command to print all the lines in the given range(3 to 5) in database
awk 'NR==3, NR==5{print}' emp.txt