echo welcome to user registration problem !

read -p "Enter valid last name " lName

pattern="^([A-Z])[A-Za-z]{2,}$"

if [[ $lName =~ $pattern ]]
then
	echo valid
else
	echo not valid
fi
