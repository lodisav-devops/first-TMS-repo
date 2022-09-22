#!/bin/bash

amount_file="$1"
path="/home/vagrant"
dir="/Dir_ex.3"
path+="$dir"
mkdir -p "$path"

for (( i=1; i<="$amount_file"; i++)); do
    cd "$path"
    if [ $(($i % 2)) -ne 1 ]; then #проверяем на четность и нечетность через остаток от деления на 2
        echo "even" > "$i".txt
    else
        echo "odd" > "$i".txt
    fi
done
