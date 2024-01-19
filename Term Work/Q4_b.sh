#Write a shell script that displays all the links to a file specified as the first argument to the script. 
#The second argument, which is optional, can be used to specify in which the search is to begin. If this second argument is not present, the search is to 
#begin in current working directory. In either case, the starting directory as well as all its subdirectories at all levels must be searched. 
#The script need not include any error checking.
file=$1 
if [ $# -eq 1 ]
then 
    dirx="." 
else 
    dirx="$2" 
fi 
set -- `ls -l $file` 
lcnt=$2 
if [ $lcnt -eq 1 ] 
then 
    echo "No other links" 
    exit 0 
else 
    set -- `ls -i $file` 
    inode=$1 
    find "$dirx" -xdev -inum $inode -print 
fi 