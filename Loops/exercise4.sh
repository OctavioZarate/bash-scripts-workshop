#Write a script that first retrieves the list of system user accounts containing uppercase letters. Then, ask the user to input a username. 
#While the inputted username is not valid (i.e., does not exist), display an error message.
#Once a valid username is entered, display ALL available information about that system user.

#!/bin/bash

echo "System users with uppercase letters:"
grep '[A-Z]' /etc/passwd | cut -d: -f1

user=""

# Mientras el usuario NO exista, seguir pidiendo
while ! grep -q "^$user:" /etc/passwd; do
  read -p "Write a valid username: " user
  if ! grep -q "^$user:" /etc/passwd; then
    echo "Invalid user. Try again."
  fi
done

# Cuando salga del while, el usuario es válido
echo "User information '$user':"
grep "^$user:" /etc/passwd
