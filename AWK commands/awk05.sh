#AWK command to print details if the person is director or chairman from the emp.txt file
awk -F"|" '/director/ || /manager/{print $2, $3, $6}' emp.txt