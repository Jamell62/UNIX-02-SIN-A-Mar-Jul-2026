#!/bin/bash
# Specifies that the script should be executed using the Bash shell.

FILE="output.txt"
# Creates a variable named FILE and assigns it the filename "output.txt".

touch "${FILE}"
# Creates the file if it does not exist. If it already exists, its timestamp is updated.

until [[ -s "${FILE}" ]]; do
# Starts a loop that continues until the file has a size greater than zero.
# The -s test returns true when the file exists and is not empty.

    echo "${FILE} is empty..."
    # Prints a message indicating that the file is still empty.

    echo "Checking again in 2 seconds..."
    # Prints a message that the script will check the file again after a delay.

    sleep 2
    # Pauses the script for 2 seconds before the next check.

done
# Ends the until loop.

echo "${FILE} appears to have some content in it!"
# Prints a message when the file contains data and the loop finishes.