#!/bin/bash

function createRandomDirFiles {

    #генерируем Рандом больше 4
    a=(5 6 7 8 9)
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

            #проверяем на четность и нечетность через остаток от деления на 2
            if [ $(($rand_file % 2)) -ne 1 ]; then

                echo "even" > $1/file_$rand_file.txt
                
            else
                echo "odd" > $1/file_$rand_file.txt
            fi
            
            (( rand_file-- ))

        done

    else
        return
    fi    
}

name_dir="$1"
depth_gen="$2"

#выполнение условия с глубиной >= 3
if [ "$depth_gen" -ge "3" ]; then

    path="/home/vagrant/$name_dir/Dir_$depth_gen"
    mkdir -p "$path"
    createRandomDirFiles "$path" "$depth_gen"

else
    echo "Add second parameter more or equal '3'!"
fi
