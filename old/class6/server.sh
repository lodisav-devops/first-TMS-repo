#!/bin/bash
apt-get update
apt-get install ntp -y
systemctl enable ntp
echo "server 3.by.pool.ntp.org iburst prefer" >> /etc/ntp.conf
timedatectl set-timezone Europe/Minsk
systemctl restart ntp
