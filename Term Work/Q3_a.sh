#Write shell script to implement terminal locking (similar to the lock  command). It should prompt the user for a password.
#After accepting the password entered by the user, it must prompt again for the the matching password as confirmation and if match occurs, it 
#must lock the keyword until a matching password is entered again by the user, Note that the script must be written to disregard BREAK, contro-D.
#No time limit need be implemented for the lock duration.
echo "Enter the passwd for terminal locking"  
read pass1  
echo "Enter passwd for confirmation" 
stty -echo 
read pass2  
val=1 
while [ $val -eq 1 ] 
do 
    if [ $pass2 = $pass1 ] 
    then 
        echo "Password match" 
        val=0 
    else 
        echo "Invalid password" 
        echo "Enter password for confirmation"  
        read pass2 
        stty echo 
    fi 
done 
if [ $pass1 = $pass2 ] 
then 
    echo "Terminal is locked" 
    echo "Enter password to unlock terminal"  
    read pass3 
    val=1
    while [ $val -eq 1 ] 
    do
        while [ -z "$pass3" ] 
        do 
            sleep 1 
            read pass3 
        done  
        if [ $pass3 = $pass2 ] 
        then 
            val=0
        else
            clear
            echo "Invalid password" 
            echo "Enter passwd for unlocking" 
            stty -echo
            read pass3
        fi
    done
    stty echo
fi
echo "Terminal unlocked"