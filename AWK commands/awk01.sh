#AWK command to print 2, 3, 6 columns in emp.txt file
awk -F "|" ' NF{print $2, $3, $6}' emp.txt