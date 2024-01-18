#AWK command to display database with line number for file emp.txt
awk -F "|" '{print NR, $0}' emp.txt