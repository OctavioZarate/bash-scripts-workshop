#Write a script that removes comments (lines starting with # until the end of the line) from a file.
#Once the comments are removed, ask the user if a given word/phrase exists in the file.
#Then, prompt the user to add a sentence to the end of the file (this step is mandatory).

#!/bin/bash

file="Act3_parole.txt"
newfile_content=""

#Read file
mapfile -t lines < "$file"

for line in "${lines[@]}"; do
  if [[ ! "$line" =~ ^# ]]; then
    newfile_content+="$line"$'\n'
  fi
done

#New file with out comments
echo -n "$newfile_content" > "$file"

#asking user for a word/phrase
read -p "Write a word or phrase to search in the file: " search

if grep -qF "$search" "$file"; then
  echo "The word/phrase '$search' exists in the file."
else
  echo "The word/phrase '$search' does NOT exist in the file."
fi

# Adding a sentence to the file
read -p "Add a sentence to the end of the file: " sentence
echo "$sentence" >> "$file"
