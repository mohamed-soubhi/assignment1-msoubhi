#!/bin/bash
#
# finder shell script for assignment 1
# Author: Mohamed Soubhi


# check number of arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 filesdir searchstr"
    exit 1
fi

filesdir=$1
searchstr=$2

# check if filesdir is a directory
if [ ! -d "$filesdir" ]; then
    echo "$filesdir is not a directory"
    exit 1
fi

# find the number of files and matching lines
num_files=$(find "$filesdir" -type f | wc -l)
num_matches=$(grep -r "$searchstr" "$filesdir" | wc -l)

# print the result
echo "The number of files are $num_files and the number of matching lines are $num_matches"
