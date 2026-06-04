#!/bin/bash
set -x
bash --version
env
echo ${SHELL}
echo ${RANDOM}
echo ${UID}
echo ${OSTYPE}
man ls #Display the manual page for a comman
ps -e -f
ps -ef
df -h
bash -r blackhatbash.sh # Run a Bash script in restricted mode
bash -n blackhatbash.sh # Check a Bash script for syntax errors without executing it
set +x
