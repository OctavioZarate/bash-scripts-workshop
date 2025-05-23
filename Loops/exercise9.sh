#Create a script that displays an interactive menu with three options:
#1) Show current date and time
#2) Check if a file exists
#3) Exit
#The menu should repeat until the user selects “Exit”. If the input is invalid, show an error message.

#!/bin/bash

choice=0

while [ "$choice" != "3" ]; do
  echo ""
  echo "----- MENU -----"
  echo "1) Show current date and time"
  echo "2) Check if a file exists"
  echo "3) Exit"
  read -p "Choose an option (1-3): " choice

  if [ "$choice" = "1" ]; then
    echo "Current date and time: $(date)"
  
  elif [ "$choice" = "2" ]; then
    read -p "Write the file name or path: " filename
    if [ -e "$filename" ]; then
      echo "The file exists."
    else
      echo "The file does not exist."
    fi

  elif [ "$choice" = "3" ]; then
    echo "Exiting..."
  
  else
    echo "Invalid option. Choose 1, 2 or 3."
  fi
done
