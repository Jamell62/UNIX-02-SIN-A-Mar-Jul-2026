#This command creates a new directory called “proyecto” in your current location. It’s basically the place where you will store all the files for your project.
mkdir proyecto 

#Here you are changing directories using an absolute path. That means you are specifying the full location of the folder starting from the root (/).
cd /workspaces/UNIX-02-SIN-A-Mar-Jul-2026/proyecto

#This command uses a relative path, which means it depends on your current location.
cd proyecto/

#The command cd /workspaces/ changes the current directory using an absolute path, taking you directly to the /workspaces/ folder regardless of where you are.
cd /workspaces/

#The command cd ~ takes you to your home directory. The symbol ~ is a shortcut that repr
cd ~

#The command cd /home/codespace moves you to the home directory of the user called “codespace” using a full absolute path.
cd /home/codespace

#The command echo $HOME displays the path of your home directory by printing the value stored in the HOME environment variable.
echo $HOME

#The command echo $BASH shows the location of the Bash shell you are currently using, which is typically /bin/bash.
 echo $BASH

#The command echo $PATH prints a list of directories where the system searches for executable commands. These directories are separated by colons and allow you to run commands without typing their full p
 echo $PATH