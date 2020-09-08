echo welcome to user registration problem !

read -p "Enter valid email " email

pattern="^([0-9A-Za-z])+([-.+_][0-9A-Za-z]+)*@([0-9A-Za-z])+[.]([a-zA-Z])+([.][A-Za-z]+)*$"

if [[ $email =~ $pattern ]]
then
        echo valid
else
        echo not valid
fi
