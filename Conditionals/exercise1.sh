#Design a script that receives an integer from the keyboard
#and says whether it is positive or negative, comparing it to zero.

#!/bin/bash

number = int(input("Enter an integer: "))

if number > 0:
    print("The number is positive.")
elif number < 0:
    print("The number is negative.")
else:
    print("The number is zero.")

fi
