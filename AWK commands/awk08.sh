#AWK command to print column 1,2,6 of the directors in the database(emp.txt)
awk '/director/{print $1, $2, $6}' emp.txt