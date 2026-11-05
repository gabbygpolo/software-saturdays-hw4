#!/usr/bin/bash

# Checks for no argument
if [[ "$#" -eq "0" ]]; then
	ls -p | grep -v '/$'
	exit 0
fi

# Checks if more than one argument is given
if [[ "$#" -gt "1" ]]; then
	echo "ERROR: More than one argument."
	exit 1
fi

# Checks if the given argument is not a directory
if [[ ! -d "$1" ]]; then
	echo "ERROR: Not a directory."
	exit 2
fi

# Lists regular files in the given directory
if [[ "$#" -eq "1" ]]; then
	ls -p "$1" | grep -v '/$'
fi
