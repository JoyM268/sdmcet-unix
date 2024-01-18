#AWk command to display the lines whose length is greater 15
awk 'length($0) > 15{print}' emp.txt