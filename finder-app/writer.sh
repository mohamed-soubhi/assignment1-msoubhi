#!/bin/bash
#
# writer shell script for assignment 1
<<<<<<< HEAD
# Author: Mohamed Soubhi
=======
# Author: Muhammad Soubhi
>>>>>>> c618734cde51fa7857e5ba2d02cc726246d40fee

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
