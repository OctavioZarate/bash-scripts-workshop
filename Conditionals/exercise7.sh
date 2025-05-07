#Design a script that receives the path of a file and indicates the permissions
#it has (Write, Read, eXecute).

#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <file_path>"
    exit 1
fi

file="$1"

if [ ! -e "$file" ]; then
    echo "Error: File does not exist."
    exit 1
fi

echo -n "Permissions: "
[ -r "$file" ] && echo -n "Read " || echo -n ""
[ -w "$file" ] && echo -n "Write " || echo -n ""
[ -x "$file" ] && echo -n "Execute" || echo -n ""
echo

