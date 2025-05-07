#Design a script that receives an integer from the keyboard and says whether it is zero.
#If the number is not zero, the script will explicitly say that the number is not zero.

#!/bin/bash

number = int(input("Enter an integer: "))

if number == 0:
    print("The number is zero.")
else:
    print("The number is not zero.")

fi
