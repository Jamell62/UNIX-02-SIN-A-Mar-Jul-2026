#Changes the current directory to the /dev folder where device files are stored, represents hardware components like disks and terminals.
cd /dev

#ists files and directories in the current location helps to view the contents of a directory.
ls

#Navigates to /proc, a virtual directory stored in memory.
#Contains real-time system and process information.
cd /proc

#Displays detailed information about the CPU.
#Shows model, cores, speed, and system flags.
cat cpuinfo

#Prints the absolute path of the current directory.
#Useful to know your exact location in the system.
pwd

#Moves to the root directory of the system.
#This is the top-level directory in Linux.
cd /

#Lists files and adds symbols to indicate their type.
#For example, directories end with '/' and executables with '*'.
ls -F

#Shows the inode number of each file.
#Inodes are unique identifiers in the filesystem.
ls -i

#Creates another reference to the same file data (hard link).
#The file remains even if the original name is deleted.
Hard Link

#Creates a symbolic pointer to another file (soft link).
#If the original file is removed, the link becomes broken.
Soft Link