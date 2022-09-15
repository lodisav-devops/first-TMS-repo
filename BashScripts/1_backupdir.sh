#!/bin/bash

dir_backup="$1"
backup_dir="$2"
amount_backup="$3"
date_now=`date +"%H.%M.%S_%d-%m-%Y"`

# создание папки из которой делаем backup
if [ -d /home/vagrant/"$dir_backup" ]; then
echo "Directory $dir_backup was created earlier"
else
mkdir /home/vagrant/"$dir_backup"
cp /home/vagrant/Vagrantfile /home/vagrant/"$dir_backup"
fi

# создание папки для хранения backup
if [ -d /home/vagrant/"$backup_dir" ]; then
echo "Directory $backup_dir was created earlier"
else
mkdir /home/vagrant/"$backup_dir"
fi

# архивирование папки
tar -czf "$dir_backup-$date_now".tar.gz "$dir_backup"

# проверка условия на количество backup в папке и перемещение в папку с backup
file_count=`find /home/vagrant/"$backup_dir" -type f | wc -l`

if [ "$file_count" -ge "$amount_backup" ]; then
old_file=`ls -t "$backup_dir" | tail -n 1`
rm /home/vagrant/"$backup_dir"/"$old_file"
mv "$dir_backup-$date_now".tar.gz "$backup_dir"
echo "The oldest archive dir $dir_backup is removed and the new one is added to the dir $backup_dir"
else
mv "$dir_backup-$date_now".tar.gz "$backup_dir"
echo "New archive dir $dir_backup is added to the dir $backup_dir"
fi
