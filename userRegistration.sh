echo welcome to user registration problem !

read -p "Enter valid mobile number " mobileNo

pattern="^([0-9]{2})+([[:space:]])([0-9]{10})+$"

if [[ $mobileNo =~ $pattern ]]
then
        echo valid
else
        echo not valid
fi

