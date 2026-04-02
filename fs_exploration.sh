#changes the current director
cd /

#lists files adding symbols to show their types
ls -F

#Run the APT package manager as superuser to refresh the list of available packages
sudo apt update

#Run the APT package manager as superuser to upgrade all installed packages to their latest versions
sudo apt upgrade

#Run the APT package manager as superuser to install the program called parted.
sudo apt install parted

#This command shows all disks and partitions with their details and filesystems, separated by lines for readability.
sudo parted -l && echo -e "\n---\n" && lsblk -f && echo -e "\n---\n"

#Run parted as superuser to list all disks and their partitions
sudo parted -l

#List all block devices (disks and partitions) with their filesystem information
lsblk -f

#Check if the system is booted in UEFI or BIOS mode
[ -d /sys/firmware/efi ] && echo "UEEFI" || echo "BIOS"

#Run the next command only if the previous command succeeded (exit status 0)
&&

#Run the next command only if the previous command failed (non-zero exit status)
||

#Displays detailed information about the file test.txt, reads the file’s inode and shows metadata, not just the content.
stat test.txt