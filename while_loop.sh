#!/bin/bash

# Specifies that the script should be executed using the Bash shell.
SIGNAL_TO_STOP_FILE="stoploop"
# Creates a variable named SIGNAL_TO_STOP_FILE and assigns it the value "stoploop".

while [[ ! -f "${SIGNAL_TO_STOP_FILE}" ]]; do
# Starts a loop that continues while the file "stoploop" does not exist.
# -f checks if a file exists.
# ! negates the condition.

    echo "The file ${SIGNAL_TO_STOP_FILE} does not yet exist..."
    # Prints a message indicating that the file has not been found.

    echo "Checking again in 2 seconds..."
    # Prints a message that the script will check again after a delay.

    sleep 2
    # Pauses the script for 2 seconds before the next check.

done
# Ends the while loop.

echo "File was found! Exiting..."
# Prints a message when the file is detected and the script is about to terminate.