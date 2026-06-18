#!/bin/bash
ps | grep TTY
ps | grep -i tty 
grep -v "35.237.4.214" log.txt
grep -o "35.237.4.214" log.txt
awk '{print $1}' log.txt
cat log.txt 
awk '{print $1,$2,$3}' log.txt
awk '{print $1,$NF}' log.txt
awk -F',' '{print $1}' example_file2
head log.txt
grep "42.236.10.117" log.txt
awk '{print $7}' log.txt
grep "42.236.10.117" log.txt | awk '{print $7}'