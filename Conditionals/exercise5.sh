#Design a script that receives the path of a file and indicates whether it exists.
#If the file exists, the script should The script should.. :
# A) Display its file type (text, binary, or unknown, depending on the file command).
# B) Indicate whether the file is readable, writable, and/or executable.

#NOTE: If the file does not exist, an error message should be displayed and
#if no parameters or more than one have been passed,
#a message about correct usage should be displayed.


#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <file_path>"
    exit 1
fi

file_path="$1"

if [ ! -e "$file_path" ]; then
    echo "Error: File does not exist."
    exit 1
fi

# Get file type using `file` command
file_type_output=$(file "$file_path")

# Determine type: text, binary, or unknown
if echo "$file_type_output" | grep -q "text"; then
    file_type="Text"
elif echo "$file_type_output" | grep -q "executable"; then
    file_type="Binary"
else
    file_type="Unknown"
fi

echo "File type: $file_type"

# Check permissions
[ -r "$file_path" ] && echo "Readable: Yes" || echo "Readable: No"
[ -w "$file_path" ] && echo "Writable: Yes" || echo "Writable: No"
[ -x "$file_path" ] && echo "Executable: Yes" || echo "Executable: No"
