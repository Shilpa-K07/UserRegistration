echo welcome to user registration problem !

read -p "Enter valid password " password

if [[ "$password" == *[[:upper:]]* ]]
then
        echo valid
else
        echo not valid
fi

