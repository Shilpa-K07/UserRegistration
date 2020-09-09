echo welcome to user registration problem !

read -p "Enter last name " lName

pattern="^[[:upper:]][A-Za-z]{2,}$"

if [[ $lName =~ $pattern ]]
then
	echo valid
else
	echo not valid
fi
