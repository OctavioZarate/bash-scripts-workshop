#Write a script that asks the user for a password and checks whether it meets the following criteria:
#At least 8 characters long
#Contains at least 1 uppercase letter
#Contains at least 1 digit
#While the password does not meet all these requirements, the script must show an error message and ask again.

#!/bin/bash

echo "Create a valid password"

valid="no"

while [ "$valid" != "yes" ]; do
  read -s -p "Write a password: " password
  echo ""

  if [ ${#password} -lt 8 ]; then
    echo "Password must have at least 8 characters."
  elif ! [[ "$password" =~ [A-Z] ]]; then
    echo "Password must have at least 1 uppercase letter."
  elif ! [[ "$password" =~ [0-9] ]]; then
    echo "Password must contain at least 1 digit."
  else
    echo "Valid password."
    valid="yes"
  fi
done
