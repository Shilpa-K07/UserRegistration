echo welcome to user registration problem !

read -p "Enter valid password " password

if [[ "${#password}" -ge 8 && "$password" == *[[:upper:]]* && "$password" == *[a-zA-Z]* ]]
then
        echo valid
else
        echo not valid
fi
