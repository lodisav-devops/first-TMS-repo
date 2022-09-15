#!/bin/bash

# кол-во процессов выполняемых в системе (под текущим пользователем)
name_user=`whoami`
amount_com=`ps -fu "$name_user" | wc -l`
amount_proc=$(($amount_com-1))
echo "Amount of processes for $name_user = $amount_proc"

# загрузка CPU в %
cpu_load_all=`ps -aux | awk '{a+=$3} END {print a}'`
echo "CPU load now = $cpu_load_all%"

# объем доступной оперативной памяти
size_mem_total=`free --mega | grep 'Mem:' | awk '{print $2}'`
size_mem_used=`free --mega | grep 'Mem:' | awk '{print $3}'`
size_mem_free=`free --mega | grep 'Mem:' | awk '{print $4}'`
size_mem_cache=`free --mega | grep 'Mem:' | awk '{print $6}'`
size_mem_available=`free --mega | grep 'Mem:' | awk '{print $7}'`
echo "Memory size in megabytes Total=$size_mem_total MB, Used=$size_mem_used MB, Free=$size_mem_free MB, Cache=$size_mem_cache MB, Available=$size_mem_available MB"

# кол-во устан. соединений по порту (портам)

if [ -n "$1" ]; then
amount_t=`ss -n sport = :"$1" | wc -l`
amount_conn_ports=$(($amount_t-1))
echo "Amount connections for port $1 = $amount_conn_ports"
else
amount_all_t=`ss -n | wc -l`
amount_all_ports=$(($amount_all_t-1))
echo "Amount all ports with connections $amount_all_ports"
fi

# суммарный объем всех дисков установленных на host

summ_size=`lsblk -b | awk '{a+=$4} END {print a}'`
echo "Summ size disk devices on the host - $summ_size B and $(($summ_size/1024)) KB and $(($summ_size/1048576)) MB and $(($summ_size/1073741824)) GB"
