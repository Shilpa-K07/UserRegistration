echo welcome to user registration problem !

read -p "Enter valid password " password

pattern="^[0-9A-Za-z]{8,}$"

if [[ $password =~ $pattern ]]
then
        echo valid
else
        echo not valid
fi

