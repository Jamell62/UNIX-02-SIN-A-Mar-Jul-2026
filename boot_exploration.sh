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