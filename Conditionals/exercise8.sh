#Design a script that receives the path of a file and indicates
#whether it is a directory or a file and, in case it’s a file, it must be shown its extension.

#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <path>"
    exit 1
fi

path="$1"

if [ -d "$path" ]; then
    echo "It is a directory."
elif [ -f "$path" ]; then
    echo "It is a file."
    filename=$(basename -- "$path")
    extension="${filename##*.}"
    if [ "$filename" = "$extension" ]; then
        echo "The file has no extension."
    else
        echo "Extension: .$extension"
    fi
else
    echo "Error: The path is neither a regular file nor a directory."
    exit 1
fi
