#!/usr/bin/bash

# Checks if no argument is provided
if [[ "$#" -eq "0" ]]; then
	while true
	do
		echo "n"
	done
	exit 0
fi

# Checks if one argument is provided
if [[ "$#" -eq "1" ]]; then
	while true
	do
		echo "$1"
	done
	exit 0
fi

# Checks if multiple arguments are provided
if [[ "$#" -ge "2" ]]; then
	while true
	do
		echo "$@"
	done
	exit 0
fi
