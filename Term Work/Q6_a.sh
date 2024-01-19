#Write a shell script to find a file/s that matches a pattern given as command line argument in the home directory, display the contents of the file 
#and copy the file into the directory ~/mydir
if [ $# -eq 0 ] 
then 
    echo “No arguments” 
    exit 
fi 
for i in $* 
do 
    echo grep –riw $* /home/BE 
    ls $* 
    cat $* 
    cp $* /home/BE/mydir 
done