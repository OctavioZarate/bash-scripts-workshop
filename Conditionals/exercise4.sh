#Design a script that checks if the number of parameters entered is equal to 3.
#If it is not, it must display an error message on the screen.

#!/bin/bash

if [ $# -ne 3 ]; then
    echo "Error: Exactly 3 parameters are required."
    exit 1
fi

echo "You entered 3 parameters: $1, $2, $3"
