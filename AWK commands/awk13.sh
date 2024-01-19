#AWK script to print lines consisting the pattern saksena or saxena in the database 
awk -F"|" '/sa[kx]s*ena/' emp.txt