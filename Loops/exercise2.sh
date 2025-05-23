#Write a script that receives a list of integers (space-separated) as global parameters. The script must go through all the numbers using a for loop and calculate and display:
#How many are positive
#How many are negative
#How many are equal to zero
#Add a condition to validate that each parameter is a valid number before counting it.

#!/bin/bash

positive=0
negative=0
ceros=0

#Checking all parameters
for number in "$@"
do
  #Validation
  if [[ "$number" =~ ^-?[0-9]+$ ]]; then
    if [ "$number" -gt 0 ]; then
      positive=$((positive + 1))
    elif [ "$number" -lt 0 ]; then
      negative=$((negative + 1))
    else
      ceros=$((ceros + 1))
    fi
  else
    echo "'$num' not a valid number."
  fi
done

#Results
echo "Positives: $positive"
echo "Negatives: $negative"
echo "Ceros: $ceros"
