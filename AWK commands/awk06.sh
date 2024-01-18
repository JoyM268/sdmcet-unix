#AWK command to change the salary of the employee named barun sengupta to 3000 and display the database (emp.txt)
awk -F"|" '{if($2==" barun sengupta   "){$6=3000} print $0}' emp.txt