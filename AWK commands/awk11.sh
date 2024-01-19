#AWK command to print columns 2, 3, 6 only if the number of columns is less than or equal to 6
awk -F"|" 'NF <= 6 {print $2, $3, $6}' emp.txt