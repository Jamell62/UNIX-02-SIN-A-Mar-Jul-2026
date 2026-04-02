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