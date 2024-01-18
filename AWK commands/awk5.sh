#AWK command to display last column in the database (emp.txt)
awk -F "|" '{print $NF}' emp.txt