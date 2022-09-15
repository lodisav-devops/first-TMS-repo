#!/bin/bash

start_script=$(date +"%N")

cat history_linux.txt > 1.txt
rm 1.txt

finish_script=$(date +"%N")

difference_time=$((("$finish_script"-"$start_script")/1000000))

echo "Time is taken for executing commands = $difference_time ms"
