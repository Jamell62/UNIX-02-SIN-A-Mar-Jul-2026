#!/bin/bash
# All this script does is create a directory, create a file # within the directory, and then list the contents of the directory. 
mkdir blackhatbash2.sh
touch blackhatbash2.sh/myfile.txt 
set -x
ls -l blackhatbash2.sh
set +x