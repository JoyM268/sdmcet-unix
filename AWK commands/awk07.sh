#AWK command to print column 2, 3, 6 for the given range of lines(3 to 6) in database
awk 'NR==3, NR==6{print NR, $2, $3, $6}' emp.txt