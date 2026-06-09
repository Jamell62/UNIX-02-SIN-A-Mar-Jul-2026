#!/bin/bash

# Save the first word entered by the user as the first name
FIRST_NAME="${1}"

# Save the second word entered by the user as the last name
LAST_NAME="${2}"

# Create a file called output.txt
touch output.txt

# Add today's date to the file
date +%M-%d-%Y >> output.txt

# Add the person's full name below the date
echo "${FIRST_NAME} ${LAST_NAME}" >> output.txt

# Make a copy of the file as a backup
cp output.txt backup.txt

# Show the content of the file on the screen
cat output.txt