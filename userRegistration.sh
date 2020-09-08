echo welcome to user registration problem !

read -p "Enter valid password " password

if [[ "$password" == *[0-9]* ]]
then
        echo valid
else
        echo not valid
fi
