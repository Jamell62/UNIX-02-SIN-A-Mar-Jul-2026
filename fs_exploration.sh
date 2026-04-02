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