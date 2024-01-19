#AWK command to print the columns 2, 3, 6 only if number of columns is greater than 7 
awk -F"|" 'NF > 7 {print $2, $3, $6}' emp.txt