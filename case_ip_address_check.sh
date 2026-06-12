#!/bin/bash

IP_ADDRESS="${1}"
# Stores the first command-line argument in the variable IP_ADDRESS.

case ${IP_ADDRESS} in
# Starts a case statement to compare the IP address against different patterns.

    192.168.*)
    # Matches any address that begins with 192.168.

        echo "Network is 192.168.x.x"
        # Prints a message indicating that the IP belongs to the 192.168 network.
        ;;

    10.0.*)
    # Matches any address that begins with 10.0.

        echo "Network is 10.0.x.x"
        # Prints a message indicating that the IP belongs to the 10.0 network.
        ;;

    *)
    # Default case. Matches any address that does not fit the previous patterns.

        echo "Could not identify the network"
        # Prints a message indicating that the network could not be identified.
        ;;

esac
# Ends the case statement.

# Test IPs used:
# 192.168.holaa -> Matches the pattern 192.168.* and enters the first case.
# 10.0.0.1 -> Matches the pattern 10.0.* and enters the second case.
# 127.0.0.1 -> Does not match any specific pattern, so it enters the default (*) case.