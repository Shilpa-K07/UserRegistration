echo welcome to user registration problem !

read -p "Enter first name " fName

pattern="^[[:upper:]][A-Za-z]{2,}$"

if [[ $fName =~ $pattern ]]
then
        echo First name is valid
else
        echo First name is Invalid
fi

read -p "Enter last name " lName

pattern="^[[:upper:]][A-Za-z]{2,}$"
if [[ $lName =~ $pattern ]]
then
	echo Last name is valid
else
	echo Last name is Invalid
fi

read -p "Enter email " email

pattern="^([0-9A-Za-z])+([-+._][0-9A-Za-z]+)*@([0-9A-Za-z])+[.]([a-zA-Z])+([.][A-Za-z]+)*$"

if [[ $email =~ $pattern ]]
then
        echo Email is valid
else
        echo Email is Invalid
fi

#Mobile number validation

read -p "Enter mobile number " mobileNo

pattern="^([0-9]{2})+([[:space:]])([0-9]{10})+$"

if [[ $mobileNo =~ $pattern ]]
then
        echo Mobile number is valid
else
        echo Mobile number is Invalid
fi

# Password validation Rule1: Must contain min 8 characters

echo checking password length

read -p "Enter password " password

pattern="^[0-9A-Za-z]{8,}$"

if [[ $password =~ $pattern ]]
then
        echo Password is valid
else
        echo Password is Invalid
fi

# Password validation Rule2: Must contain min one uppercase
echo checking password length and Uppercase

read -p "Enter password " password

if [[ ${#password} -ge 8 && "$password" == *[[:upper:]]* && "$password" == *[a-zA-Z]* ]]
then
	echo Password is valid
else
        echo Password Invalid
fi

# Password validation Rule3: Must contain min one digit
echo checking length, uppercase and digit
read -p "Enter password " password

if [[ ${#password} -ge 8 && "$password" == *[[:upper:]]* && "$password" == *[a-zA-Z]* && "$password" == *[0-9]* ]]
then
        echo Password is valid
else
        echo Password is Invalid
fi

# Password validation Rule4: Must contain only one special character
echo checking length,upercase,digit and specialcase
read -p "Enter password " password
passpat=$(($(tr -d '[[:alnum:]]' <<< $password | wc -m)-1))


if [[ ${#password} -ge 8 && "$password" =~ [[:upper:]] && "$password" =~ [a-zA-Z] && "$password" =~ [0-9] && "$passpat" =~ 1 ]]
then
        echo Password is valid
else
        echo Password is Invalid
fi

# Email Valiation for all the sample emails

read -p "Enter email " email

pattern="^([0-9A-Za-z])+([-.+_][0-9A-Za-z]+)*@([0-9A-Za-z])+[.]([a-zA-Z])+([.][A-Za-z]+)*$"

if [[ $email =~ $pattern ]]
then
        echo Email is Valid
else
        echo Email is Invalid
fi
