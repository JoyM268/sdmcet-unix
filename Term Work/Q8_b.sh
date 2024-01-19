#Write a shell script that reports the logging in of a specified user within one minute after he/she log in. 
#The script automatically terminate if specified user does not log in during a specified period of time.
echo -n "enter the login name of the user: "
read lname
period=0
echo -n "enter the unit of time(min): " 
read min
until who | grep -w "$lname"> /dev/null 
do 
    sleep 60 
    period=`expr $period + 1` 
    if [ $period -gt $min ] 
    then 
        echo "$lname has not logged in since $min minutes."
        exit 
    fi 
done 
echo "$lname has now logged in."