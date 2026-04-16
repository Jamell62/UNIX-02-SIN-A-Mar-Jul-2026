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

#The command ls -lai lists all files in the current directory in a detailed format. It shows hidden files (-a), displays extra information like permissions and size (-l), and includes the inode number of each file (-i).
 ls -lai

#The command ls -l -a -i does exactly the same as ls -lai. It just separates each option instead of combining them, but the result is identical.
 ls -l -a -i

#The command man ls opens the manual page for the ls command. It provides detailed information about all available options and how to use them.
man ls
 
#The command ls --all lists all files in the directory, including hidden files (those that start with a dot .), but without the detailed format.
ls --all

#The symbol . represents the current directory. It is used to refer to the folder you are currently in.
.

#The symbol .. represents the parent directory, which is the folder one level above your current location.
..

#The line total 8 shows the total space used by the listed files in the directory. The numbers 1573086 and 1572874 are inode numbers, which are unique identifiers for each file or directory in the system. The string drwxrwxrwx+ represents permissions: d means it is a directory, r is read, w is write, x is execute, and + indicates additional permissions (ACL). The numbers 2 and 5 show how many links each directory has. The names codespace codespace and codespace root indicate the owner and the group. The value 4096 is the size in bytes. The date Apr 9 12:19 shows the last modification time. Finally, . refers to the current directory and .. refers to the parent directo
total 8
1573086 drwxrwxrwx+ 2 codespace codespace 4096 Apr  9 12:19 .
1572874 drwxrwxrwx+ 5 codespace root      4096 Apr  9 12:19 ..

#This value indicates the device where the file or directory is stored, but instead of a name like “C drive” or “SSD”, it uses an internal system identifier. It is made up of two numbers: 7 → major number 5 → minor number
stat .
  File: .
  Size: 4096            Blocks: 8          IO Block: 4096   directory
Device: 7,5     Inode: 1573086     Links: 2

#The command pwd shows the current directory you are in.
pdw

#The command whoami displays the current user you are logged in as.
whoami

#The command ls -lt lists files in long format sorted by modification time, showing the most recently modified files first
Is -lt

#The command ls /etc | head -20 lists the first 20 files inside the /etc directory.
ls /etc | head -20

#The command ls /dev | tail -20 lists the last 20 files inside the /dev directory.
ls /dev | tail -20.