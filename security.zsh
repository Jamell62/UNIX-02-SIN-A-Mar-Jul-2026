umask
# Shows the current default permission mask for new files and directories

touch archivo1
# Creates an empty file named "archivo1"

touch archivo1
# Updates the modification date of "archivo1" if it already exists

ls -l
# Displays files and directories in long format with detailed permissions

umask 027
# Sets default permissions:
# Files -> 640 (rw-r-----)
# Directories -> 750 (rwxr-x---)

touch archivo2
# Creates an empty file named "archivo2" using the current umask

touch directorio2
# Creates an empty file named "directorio2"
# NOTE: touch does NOT create directories

ls -l
# Lists files and permissions again to verify the changes

apt-get update
# Updates the package list from the repositories

apt-get install acl
# Installs the ACL package to manage Access Control Lists permissions

chown -R root:root .
# Changes the owner and group of all files and directories
# in the current directory to root

setfacl -bnR .
# Removes all ACL permissions recursively from the current directory
# -b = remove all ACL entries
# -n = do not recalculate mask
# -R = apply recursively

#Sets the default permissions so that new files and directories are only accessible by the owner.
umask 077

#Creates an empty file named secreto.txt.
touch secreto.txt

#Creates a new directory called privado.
mkdir privado

#Displays the files and directories in long format, showing permissions, owner, size, and date.
ls -l

umask 022
# Sets default file permissions so new files are readable by everyone but only writable by the owner

whoami
# Displays the current logged-in user

echo "Hola" > mi_archivo
# Creates a file named mi_archivo and writes the text "Hola" into it

ls -l mi_archivo
# Shows detailed information about mi_archivo including permissions, owner, size, and modification time

useradd -m -s /usr/bin/zsh jam
## Creates a new user named "jam", creates a home directory, and sets Zsh as the default shell

chown jam mi_archivo
# Changes the ownership of mi_archivo to the user "jam"

groups
# Shows the groups the current user belongs to

groupadd grupo_test
# Creates a new group named "grupo_test"

groups
# Shows the current user's groups again; only the original groups appear because no user was added to the new group

cat /etc/group
# Displays all system groups and their configuration from the /etc/group file

touch comun
# Creates an empty file named "comun"

ls -l comun
# Shows detailed information about the file "comun" such as permissions, owner, and size

usermod -a -G grupo_test jam
# Adds the user "jam" to the group "grupo_test" without removing other group memberships

chgrp grupo_test comun
# Changes the group ownership of the file "comun" to "grupo_test"

ls -l comun
# Displays detailed information of the file "comun", showing its permissions, owner, and updated group

chown jam:grupo_test mi_archivo
# Changes the owner of "mi_archivo" to user "jam" and the group to "grupo_test"

ls -l mi_archivo
# Displays detailed information of "mi_archivo", showing its permissions, new owner, and group

mkdir -p proyecto/sub
# Creates a folder called "proyecto" and inside it creates another folder "sub" (the -p allows creating both at once, including parent directories)

touch proyecto/readme proyecto/sub/datos
# Creates two empty files: "readme" inside proyecto and "datos" inside the subfolder

chown -R jam:grupo_test proyecto
# Changes ownership of the folder "proyecto" and everything inside it to user "jam" and group "grupo_test" (recursive change)

ls -lR
# Lists all files and folders in detail, including subdirectories, showing permissions, owners, and groups