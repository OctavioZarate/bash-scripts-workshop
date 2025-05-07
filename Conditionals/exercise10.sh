#Design a script that receives as parameters the name of a Wireshark
#capture file (in TXT or CSV format) and the name of a
#protocol (e.g. HTTP, TCP, UDP, etc.). The script must..:

#A) Check if the file exists and if it has a .txt or .csv extension.

#B) If everything is correct, count the lines that contain the name of the protocol
#indicated by the user (without distinguishing uppercase/lowercase letters).

#NOTE: If any validation fails, finish the execution of the script and display a specific error
#message. If there is no match at protocol search, display a message, too.

#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <capture_file.txt|capture_file.csv> <protocol>"
    exit 1
fi

file="$1"
protocol="$2"

# Check if file exists
if [ ! -f "$file" ]; then
    echo "Error: File does not exist."
    exit 1
fi

# Check extension
extension="${file##*.}"
if [[ "$extension" != "txt" && "$extension" != "csv" ]]; then
    echo "Error: File must have .txt or .csv extension."
    exit 1
fi

# Count lines
count=$(grep -i -c "$protocol" "$file")

if [ "$count" -eq 0 ]; then
    echo "No matches found for protocol '$protocol'."
else
    echo "Found $count lines containing '$protocol'."
fi

