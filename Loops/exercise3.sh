#Write a script that asks the user to enter a directory path and then displays the permissions of the directory,
#the number of files and subfolders it contains and the names of all files and folders inside it.

#!/bin/bash

file="ex3.txt"

#create the file if does not exist
if [ ! -f "$file" ]; then
  touch "$file"
fi

echo "Write a sentece (write ':>' to finish):"

word=""

while [ "$word" != ":>" ]; do
  read -p "> " palabra
  if [ "$word" != ":>" ]; then
    echo "$word" >> "$file"
  fi
done

