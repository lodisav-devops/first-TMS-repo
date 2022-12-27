#!/bin/bash

backup_name="$1"
s3_bucket_name="$2"
backup_limit="$3"
aws_s3_bucket_name=`aws s3 ls | grep -w "$s3_bucket_name" | tr '[:space:]' '[\n*]' | sed -n 3p`
date_now=`date +"%H.%M.%S_%d-%m-%Y"`

# проверка на наличие в S3 бакета с введенным именем (s3_bucket_name)
if [ "$s3_bucket_name" != "$aws_s3_bucket_name" ]; then
    aws s3 mb s3://"$s3_bucket_name"
else
    echo "Bucket with name $s3_bucket_name already created"
fi

# создание папки из которой делаем backup
mkdir /home/ec2-user/project
cp /home/ec2-user/my_script.sh /home/ec2-user/project

# создание папки для хранения backup
mkdir /home/ec2-user/backup
aws s3 sync s3://"$s3_bucket_name" /home/ec2-user/backup

# создание backup
tar -czf "$backup_name-$date_now".tar.gz project
mv "$backup_name-$date_now".tar.gz /home/ec2-user/backup/"$backup_name-$date_now".tar.gz
rm -r /home/ec2-user/project

# проверка условия на количество backup в S3 и его выполнение с загрузкой созданного backup
function checkConditionDeleteOldUploadFile {
    backup_count=`find /home/ec2-user/backup -type f | wc -l`

    if [ "$backup_count" -gt "$backup_limit" ]; then
        old_file=`ls -t /home/ec2-user/backup | tail -n 1`
        rm /home/ec2-user/backup/"$old_file"
        checkConditionDeleteOldUploadFile
    else
        aws s3 sync /home/ec2-user/backup s3://"$s3_bucket_name" --delete        
    fi
}

checkConditionDeleteOldUploadFile

rm -r /home/ec2-user/backup
