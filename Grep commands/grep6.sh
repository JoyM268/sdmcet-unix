#Script to print the names of all the directors in the database emp.txt
grep -w "manager" emp.txt | cut -d'|' -f 2