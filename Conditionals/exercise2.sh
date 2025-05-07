#Design a script that receives an integer from the keyboard
#and says whether it is negative. If the number is not negative,
#the script will explicitly say that the number is not negative.

#!/bin/bash

number = int(input("Enter an integer: "))

if number < 0:
    print("The number is negative.")
else:
    print("The number is not negative.")

fi

