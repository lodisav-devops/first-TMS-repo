#!/bin/bash

function createRandomDirFiles {

    #генерируем Рандом от 1 до 9
    a=(1 2 3 4 5 6 7 8 9)
    b="${#a[@]}"
    c="$((RANDOM%$b))"
    d="${a[$c]}"
    local depth_gen=$(($2 - 1))
    local rand_dir="$d"
    local rand_file="$d"
    
    #выполняем условие рандомного создания папок и файлов с заданной глубиной
    if [ "$2" -ge "1" ]; then

        while [ "$rand_dir" -ge "1" ] && [ "$depth_gen" -ge "1" ]; do

            path="$1/Dir_$depth_gen.$rand_dir"
            mkdir -p "$path"
            createRandomDirFiles "$path" "$depth_gen"
            (( rand_dir-- ))

        done

        while [ "$rand_file" -ge "1" ]; do

            echo "$1/file_$rand_file" > $1/file_$rand_file.txt
            (( rand_file-- ))

        done

    else
        return
    fi    
}

name_dir="$1"
depth_gen="$2"

#создаем родительский каталог и вызываем функцию на создание dir, file с заданной depth
path="/home/vagrant/$name_dir/Dir_$depth_gen"
mkdir -p "$path"
createRandomDirFiles "$path" "$depth_gen"
