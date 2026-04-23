#This command lists all files and directories, including hidden ones, in long format showing detailed information such as permissions, owner, size, and modification date, with sizes displayed in a human-readable format (KB, MB, GB).
ls -l -a -h

#This command performs the same function as ls -l -a -h, listing all files (including hidden ones) with detailed information and human-readable file sizes; the order of the options does not change the result.
ls -lah

#Creates a directory named -rfr; the -- ensures the name is not interpreted as an option.
mkdir -- -rfr

#Removes an empty directory named -rf; the -- ensures the name is treated as a directory name, not an option.
rmdir -- -rf

#Creates a shallow clone of a repository by limiting the commit history to a specified depth, usually cloning only a single branch unless configured otherwise.
 --depth <depth>
           Create a shallow clone with a history truncated to the specified number of commits. Implies --single-branch
           unless --no-single-branch is given to fetch the histories near the tips of all branches. If you want to clone
           submodules shallowly, also pass --shallow-submodules.

#Adds execute permission to the script for all users.
chmod +x script.sh

#Adds execute permission only for the file owner.
chmod u+x script.sh

#Removes read permission for others (non-owner users).
chmod o-r secreto.txt

#Gives the owner read and write permissions, and removes all permissions from group and others.
chmod u+rw,go-rwx privado

#This command attempts to write text to a protected file, but it usually fails because the redirection (>) is not executed with sudo privileges.
sudo echo "hola" > /etc/archivo_protegido

#This command correctly writes the text to a protected file using sudo with tee, and suppresses the output by redirecting it to /dev/null.
echo "hola" | sudo tee /etc/archivo_protegido > /dev/null

#Writes the text “hola” to a protected file using sudo by passing it through the tee command.
echo "hola" | sudo tee /etc/archivo_protegido

#This command runs with administrator privileges (sudo), opens a shell (sh -c), prints the word "chao" (echo "chao"), and appends it (>>) to the end of the protected file /etc/archivo_protegido.
sudo sh -c 'echo "chao" >> /etc/archivo_protegido'

#starts a login shell as root, loading root’s environment.
sudo -i

#switches to root user without a full login environment.
sudo su

#switches to root with a full login shell, like a fresh root login.
sudo su -

#Prints the value of the HOME environment variable (your home directory).
echo "$HOME"

#Prints the literal text $HOME without expanding it.
echo '$HOME'

#creates (or overwrites) a file called hola.s and writes the shebang line, which tells the system to use /bin/sh to run it.
echo '#!/bin/sh' > hola.s

#appends a line to hola.sh that will print a message when the script runs.
echo 'echo "Hola desde mi primer script"' >> hola.sh

#displays the contents of hola.sh in the terminal so you can check it.
cat hola.sh

#tries to execute the script, but it may fail if it doesn’t have execute permissions yet.
./hola.sh

#gives the file execute permission so it can be run as a program.
chmod +x hola.sh

#shows detailed file information, including permissions, owner, and size.
ls -l hola.sh

#runs the script successfully and prints the message.
./hola.sh