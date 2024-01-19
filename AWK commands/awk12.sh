#AWK command to print the line number of lines which are empty 
awk 'NF==0{print NR}' emp.txt