#!/bin/bash -x

echo welcome to user registration problem !

read -p "Enter password " password
passpat=$(($(tr -d '[[:alnum:]]' <<< $password | wc -m)-1))


if [[ ${#password} -ge 8 && "$password" =~ [[:upper:]] && "$password" =~ [a-zA-Z] && "$password" =~ [0-9] && "$passpat" =~ 1 ]]
then
        echo valid password
else
        echo Invalid password
fi
