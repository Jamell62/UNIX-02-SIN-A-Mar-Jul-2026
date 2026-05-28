# Show current user ID and groups
id

# Show current primary group name
id -gn

# Create a test file for inherited group verification
touch ~/test_grupo_heredado.txt

# List detailed information about the created file
ls -la ~/test_grupo_heredado.txt 

# Display the current active group
echo "Current group: $(id -gn)"

# Create another file before using newgrp
touch ~/antes_de_newgrp.txt

# List detailed information about the file
ls -la ~/antes_de_newgrp.txt
