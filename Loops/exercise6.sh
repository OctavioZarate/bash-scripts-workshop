#Write a script that asks the user to input three numeric values, one at a time.
#Use an until loop to keep asking until three valid integers are entered.
#Once you have all three values, you must:
#Display their sum (+)
#Display their product (*)
#Show the largest and smallest value

#!/bin/bash

numbers=()
count=0

until [ $count -eq 3 ]; do
  read -p "Write a valid number ($((count+1))/3): " num
  
  #validating numbers 
  if [[ "$num" =~ ^-?[0-9]+$ ]]; then
    numbers+=("$num")
    count=$((count + 1))
  else
    echo "Invalid number. Try again."
  fi
done

sum=0
product=1
greater=${numbers[0]}
minor=${numbers[0]}

for n in "${numbers[@]}"; do
  sum=$((sum + n))
  product=$((product * n))
  if [ $n -gt $greater ]; then
    greater=$n
  fi
  if [ $n -lt $minor ]; then
    minor=$n
  fi
done

#results
echo "Sum: $sum"
echo "Product: $product"
echo "Greater: $greater"
echo "Minor: $minor"
