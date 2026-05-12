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