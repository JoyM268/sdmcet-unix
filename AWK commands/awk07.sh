#AWK command to print data of employees whose salary is more than 8000
awk -F"|" '{if($6 > 7500) print}' emp.txt