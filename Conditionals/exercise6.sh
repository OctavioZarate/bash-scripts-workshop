#Design a script that receives 3 parameters,
#one of which must be an operation (add, subtract, multiply, or divide),
#a first integer numeric operand, and a second integer numeric operand. The script must:

#A) Check that exactly 3 parameters have been passed.
#B) Verify that the last two are valid integers.
#C) Verify that the operation is one of the allowed.
#D) In case of division, check that the second operand is not zero.
#E) Display the result of the indicated operation.

#NOTE: If any validation fails, finish the execution of
#the script and display a specific error message.


#!/bin/bash

# Ensure exactly 3 parameters are passed
if [ $# -ne 3 ]; then
    echo "Usage: $0 <operation> <int1> <int2>"
    exit 1
fi

operation="$1"
operand1="$2"
operand2="$3"

# Check if operand1 and operand2 are valid integers using regex
if ! [[ "$operand1" =~ ^-?[0-9]+$ ]]; then
    echo "Error: First operand is not a valid integer."
    exit 1
fi

if ! [[ "$operand2" =~ ^-?[0-9]+$ ]]; then
    echo "Error: Second operand is not a valid integer."
    exit 1
fi

# Perform operation using if-elif-else
if [ "$operation" == "add" ]; then
    result=$((operand1 + operand2))
elif [ "$operation" == "subtract" ]; then
    result=$((operand1 - operand2))
elif [ "$operation" == "multiply" ]; then
    result=$((operand1 * operand2))
elif [ "$operation" == "divide" ]; then
    if [ "$operand2" -eq 0 ]; then
        echo "Error: Cannot divide by zero."
        exit 1
    fi
    result=$((operand1 / operand2))
else
    echo "Error: Invalid operation. Use add, subtract, multiply, or divide."
    exit 1
fi

echo "Result: $result"

