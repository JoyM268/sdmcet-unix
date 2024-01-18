#AWK command to print details if the person is director or chairman from the emp.txt file
awk -F "|" '$3 == " director " || $3 == " chairman " { printf "%-20s %-12s %d\n", $2, $3, $6 }' emp.txt