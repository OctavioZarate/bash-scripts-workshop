#Write a script that asks the user to enter a directory path and then displays the permissions of the directory, 
#the number of files and subfolders it contains and the names of all files and folders inside it.

#!/bin/bash

#Asking for a valid directory
until [ -d "$directory" ]; do
  read -p "Write a valid directory route: " dir
  if [ ! -d "$directory" ]; then
    echo "Invalid. Try again."
  fi
done

#Showing permissions 
echo "Permissions of the directory: '$directory':"
ls -ld "$directory" | awk '{print $1}'

#Counting files and subdirectorys
files=$(find "$dir" -maxdepth 1 -type f | wc -l)
subdirectories=$(find "$dir" -maxdepth 1 -type d | wc -l)
subdirectories=$((num_subdirs - 1))

echo "Number of files: $files"
echo "Number of subdirectories: $subdirectories"

#Showing all files and folders
echo "Files and directories inside '$directory':"
ls -A "$directory"
