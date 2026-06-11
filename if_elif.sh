#!/bin/bash
#!/bin/bash

# Stores the first command-line argument in the USER_INPUT variable.
USER_INPUT="${1}"

# Checks if no argument was provided.
if [[ -z "${USER_INPUT}" ]]; then
    # Displays an error message.
    echo "You must provide an argument!"
    
    # Exits the script with status code 1.
    exit 1
fi

# Checks whether the argument is an existing file.
if [[ -f "${USER_INPUT}" ]]; then
    # Prints a message indicating that the argument is a file.
    echo "${USER_INPUT} is a file."

# If it is not a file, checks whether it is a directory.
elif [[ -d "${USER_INPUT}" ]]; then
    # Prints a message indicating that the argument is a directory.
    echo "${USER_INPUT} is a directory."

# Executes if the argument is neither a file nor a directory.
else
    # Prints a message indicating that the argument is invalid.
    echo "${USER_INPUT} is not a file or a directory."
fi