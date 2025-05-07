#Design a script that receives the path of a directory and the name of the final tarball file.

#A) It must check if the directory exists and, actually, if it’s a directory.
#If not, an error message must be displayed.

#B) If everything is correct, compress it in .tar.gz format with the specified name.

#C) If the file with the given name already exists, ask the user for confirmation before overwriting
#it. If the user denies it, close the script and show a message.

#!/bin/bash

# Check for exactly 2 arguments
if [ $# -ne 2 ]; then
    echo "Usage: $0 <directory_path> <tarball_name.tar.gz>"
    exit 1
fi

directory="$1"
tarball="$2"

# Check if the given path exists and is a directory
if [ ! -e "$directory" ]; then
    echo "Error: '$directory' does not exist."
    exit 1
fi

if [ ! -d "$directory" ]; then
    echo "Error: '$directory' is not a directory."
    exit 1
fi

# If the tarball already exists, confirm with user
if [ -e "$tarball" ]; then
    read -p "The file '$tarball' already exists. Overwrite? (y/n): " answer
    if [ "$answer" != "y" ] && [ "$answer" != "Y" ]; then
        echo "Aborted by user."
        exit 0
    else
        echo "Overwriting..."
    fi
fi

# Compress the directory
tar -czf "$tarball" "$directory"

# Confirm success
if [ $? -eq 0 ]; then
    echo "Directory '$directory' compressed successfully to '$tarball'."
else
    echo "Compression failed."
    exit 1
fi
