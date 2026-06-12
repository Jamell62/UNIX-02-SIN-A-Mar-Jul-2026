#!/bin/bash

for ip_address in "$@"; do
    echo "Taking some action on IP address ${ip_address}"
done
#Taking some action on IP address 127.0.0.1 Loopback address used by the local machine to communicate with itself.
#Taking some action on IP address 0.0.0.0 Special address that represents all available network interfaces.
#Taking some action on IP address 172.17.0.1 Private IP address commonly used as a gateway in Docker networks.