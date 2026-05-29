# Show the current user ID, group ID, and groups
id

# Show only the current active group name
id -gn

# Create a test file in the home directory
touch ~/test_grupo_heredado.txt

# Display detailed information about the created file
ls -la ~/test_grupo_heredado.txt

# Create another file before changing groups
touch ~/antes_de_newgrp.txt

# Display detailed information about the file
ls -la ~/antes_de_newgrp.txt

# Display the current active group
echo "Grupo actual: $(id -gn)"

# Update the package list and upgrade installed packages
apt update && apt upgrade

# Install additional util-linux tools
apt install util-linux-extra

# Reinstall the login package to restore missing commands
apt install login

# Verify that the newgrp command exists
which newgrp

# Change the current session to the "desarrolladores" group
newgrp desarrolladores

# Verify the active group after changing it
id -gn

# Search for the location of the newgrp command
find / -name newgrp 2>/dev/null

# Create a file after switching to the new group
touch ~/dentro_de_newgrp.txt

# Show detailed information about the new file
ls -la ~/dentro_de_newgrp.txt

# Create a project directory with a nested src folder
mkdir -p ~/proyecto_dev/src

# List all files and folders in the home directory
ls -la ~/

# Exit the temporary group/session
exit

# Verify that the original group was restored
id -gn

# Display the restored group name
echo "Grupo restaurado: $(id -gn)"

# Show detailed information about the file created before changing groups
ls -la ~/antes_de_newgrp.txt

# Show detailed information about the file created inside the new group
ls -la ~/dentro_de_newgrp.txt

# Create a new group called "grupo_restringido"
/usr/sbin/groupadd grupo_restringido

# Verify that the group was created successfully
cat /etc/group | grep grupo_restringido

# Set or change the password for the group "grupo_restringido"
gpasswd grupo_restringido

# Change the current session to the "grupo_restringido" group
newgrp grupo_restringido

# Verify the current active group
id -gn

# Exit the temporary group session and return to the previous one
exit