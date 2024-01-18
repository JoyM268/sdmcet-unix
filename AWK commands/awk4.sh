#AWK command to display columns(2, 6) with line number for file emp.txt
awk -F "|" '{print NR, $2, $6}' emp.txt
