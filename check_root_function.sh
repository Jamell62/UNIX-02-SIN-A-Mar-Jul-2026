#!/bin/bash

#!/bin/bash

# Define a function that checks whether the current user is root.
check_if_root() {

    # Compare the effective user ID (EUID) with 0.
    # In Linux, an EUID of 0 means the user is root.
    if [[ "${EUID}" -eq 0 ]]; then # UID identifies the real user, while EUID determines the current process permissions.

        # Return 0 to indicate success (user is root).
        return 0

    else

        # Return 1 to indicate failure (user is not root).
        return 1

    fi
}

# Call the function and evaluate its return status.
if check_if_root; then

    # Display this message if the function returned 0.
    echo "User is root!"

else

    # Display this message if the function returned a nonzero value.
    echo "User is not root!"

fi