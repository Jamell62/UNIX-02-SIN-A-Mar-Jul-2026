#!/bin/bash

for file in example_file*; do
# Starts a loop that iterates through all files whose names begin with "example_file".

    if [[ "${file}" == "example_file1" ]]; then
    # Checks if the current file is exactly "example_file1".

        echo "Skipping the first file"
        # Prints a message indicating that the first file will be skipped.

        continue
        # Skips the rest of the current iteration and moves to the next file.
    fi
    # Ends the if statement.

    echo "${RANDOM}" > "${file}"
    # Generates a random number and writes it to the current file,
    # overwriting any existing content.
done
# Ends the for loop.