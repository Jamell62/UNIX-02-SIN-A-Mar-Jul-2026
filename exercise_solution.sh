#!/bin/bash

NAME="${1}"
# Stores the first command-line argument in the NAME variable.

DOMAIN="${2}"
# Stores the second command-line argument in the DOMAIN variable.

OUTPUT_FILE="results.csv"
# Defines the name of the CSV file where results will be stored.

# Check if the two expected arguments are set
# Verifies that both required arguments were provided.

if [[ -z "${NAME}" ]] || [[ -z "${DOMAIN}" ]]; then
# Checks whether NAME or DOMAIN is empty.

  echo "You must provide two arguments to this script."
  # Displays an error message if arguments are missing.

  echo "Example: ${0} mysite nostarch.com"
  # Shows an example of how to run the script.

  exit 1
  # Exits the script with an error code.

fi

# Write CSV header to the file
# Writes the CSV column headers to the output file.

echo "status,name,domain,timestamp" > ${OUTPUT_FILE}
# Creates the CSV file and adds the header row.

if ping -c 1 "${DOMAIN}" &> /dev/null; then
# Sends one ping request to the specified domain.
# Redirects all output and errors to /dev/null.

  echo "success,${NAME},${DOMAIN},$(date)" >> "${OUTPUT_FILE}"
  # If the ping succeeds, records a success entry in the CSV file.

else

  echo "failure,${NAME},${DOMAIN},$(date)" >> "${OUTPUT_FILE}"
  # If the ping fails, records a failure entry in the CSV file.

fi
# Ends the conditional statement.
