#!/bin/bash
top
top&
touch test && touch test123
(ls; ps)
ls; ps; whoami
lzl || echo "the lzl command failed"
echo "Hello World!" > output.txt
cat output.txt
echo "Bye Bye!" >> output.txt
cat output.txt
ls -l / &> stdout_and_stderr.txt
cat stdout_and_stderr.txt
ls -l / &>> stdout_and_stderr.txt
ls -l / 1> stdout.txt 2> stderr.txt
cat stdout.txt
cat stderr.txt
lzl 2> error.txt
cat error.txt