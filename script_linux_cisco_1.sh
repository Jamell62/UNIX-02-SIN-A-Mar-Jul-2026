# Lists the contents of the Documents directory in the home folder
ls ~/Documents

# Lists files and directories in the current directory
ls

# (Unknown/likely a typo or custom command)
IS

# Lists the contents of the Documents folder (relative path)
ls Documents

# Shows a fun hidden message (Easter egg) from aptitude
aptitude moo

# Displays detailed information (permissions, size, owner, date)
ls -l

# Lists files in reverse order
ls -r

# Shows detailed list in reverse order
ls -l -r

# Same as above (combined flags)
ls -rl

# More verbose version of the aptitude Easter egg
aptitude -v moo

# Even more verbose output
aptitude -vv moo

# Maximum verbosity of the Easter egg
aptitude -vvv moo

# Prints the current working directory
pwd 

# (Shell prompt, not a command)
~$

# Changes to Documents directory
cd Documents

# Moves to root directory
cd /

# Changes to sysadmin home directory
cd /home/sysadmin

# Navigates to School/Art directory
cd School/Art

# Moves one directory up
cd .. 

# Returns to home directory
cd ~

# Lists detailed contents of /var/log directory
ls -l /var/log/

# Switches to root user with full environment
su -

# Same as above (login shell)
su -l

# Another way to start a login shell as root
su --login

# (Likely typo, possibly meant 'sh -l hello.sh')
s -l hello.sh

# Executes the script in current directory
./hello.sh

# Gives execute permission to the file for the user
chmod u+x hello.sh

# Shows file permissions and details
ls -l hello.sh

# Changes file owner to root
sudo chown root hello.sh

# Displays full content of animals.txt
cat animals.txt

# Displays full content of alpha.txt
cat alpha.txt

# Shows first 10 lines of the file
head alpha.txt

# Shows last 10 lines of the file
tail alpha.txt

# Shows first 5 lines of the file
head -n 5 alpha.txt                    

# Shows last 5 lines of the file
tail -n 5 alpha.txt

# Changes to Documents directory
cd ~/Documents

# Copies passwd file into current directory
cp /etc/passwd .

# Lists contents of Documents (prompt included)
~/Documents$ ls

# Returns to home directory
cd ~

# Creates a 50MB file filled with zeros (commonly used for swap/test)
$ dd if=/dev/zero of=/tmp/swapex bs=1M count=50