#!/usr/bin/bash

# Checks for exactly two arguments
if [[ "$#" -ne "2" ]]; then
        echo "ERROR: Incorrect number of arguments."
        exit 1
fi

# Checks if the second argument is a regular file
if [[ ! -f "$2" ]]; then
	echo "ERROR: No file given."
	exit 2
fi

# Prints $1 lines of $2
IFS=$'\n'
file=$(cat "$2")
count=1

for line in $file
do
	if [[ "$count" -le "$1" ]]; then
		echo "$line"
	fi

	count=$((count + 1))
done
