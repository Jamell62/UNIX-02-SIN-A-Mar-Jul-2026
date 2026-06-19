#!/bin/bash
grep "35.237.4.214" log.txt
grep "35.237.4.214\|13.66.139.0" log.txt #backslash signifies scape character, can be replaced by -e
grep -e "35.237.4.214" -e "13.66.139.0" log.txt
ps | grep TTY
ps | grep -i tty 
grep -v "35.237.4.214" log.txt
grep -o "35.237.4.214" log.txt
awk '{print $1}' log.txt
cat log.txt 
awk '{print $1,$2,$3}' log.txt
awk '{print $1,$NF}' log.txt
awk -F',' '{print $1}' example_csv.txt.
head log.txt
grep "42.236.10.117" log.txt
awk '{print $7}' log.txt
grep "42.236.10.117" log.txt | awk '{print $7}'
sed 's/Mozilla/Godzilla/g' log.txt > newlog.txt
grep "Mozilla" log.txt
head -n 5 new_log.txt
git diff new_log.txt
sed -i '$d' new_log.txt
git diff new_log.txt
sed 's/ //g' new_log.txt > new_log1.txt
cat new_log1.txt
sed '8,10d' new_log1.txt 
sed -n '10,15 p' log.txt
sleep 300 &
jobs
fg %1
bg %1
nohup ./exercise_solution.sh &
ps -ef | grep exercise_solution