#!/bin/bash
#
# writer shell script for assignment 1
# Author: Mohamed Soubhi

# check number of arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 writefile writestr"
    exit 1
fi

writefile=$1
writestr=$2

# create the directory if it doesn't exist
mkdir -p "$(dirname "$writefile")"

# write the string to the file
echo "$writestr" > "$writefile"

# check if the file was created successfully
if [ ! -f "$writefile" ]; then
    echo "Failed to create file $writefile"
    exit 1
fi
