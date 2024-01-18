#Program to print the names of people whose salary is greater than or equal to 6000
awk -F "|" '$6 >= 6000 { print $2 }' emp.txt