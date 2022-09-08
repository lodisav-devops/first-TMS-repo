#!/bin/bash
# настройка клиента ntp
apt-get update
timedatectl set-ntp off # отключение службы timesynchd
apt-get install ntpdate -y
echo "192.168.1.240 NTP_server" >> /etc/hosts
# синхронизация времени с сервера NTP раз в 5 мин. (задание в cron)
echo '*/5 * * * * /usr/sbin/ntpdate 192.168.1.240' > /home/vagrant/mycron.txt
crontab /home/vagrant/mycron.txt
# install ntp-client
apt-get install ntp -y
echo "server NTP_server prefer iburst" >> /etc/ntp.conf
timedatectl set-timezone Europe/Minsk
systemctl restart ntp

# install nginx
apt-get install nginx -y
systemctl enable nginx

# setting ssh connection client to server
ssh-keygen -t rsa -f /home/vagrant/.ssh/id_rsa -q -N ""
#ssh-copy-id -i /home/vagrant/.ssh/id_rsa.pub vagrant@192.168.1.240

# install Java JDK from repository
apt-get install default-jdk -y

# install JDK from downloaded file
wget -P /home/vagrant/ https://download.oracle.com/java/18/latest/jdk-18_linux-x64_bin.tar.gz
tar -xf /home/vagrant/jdk-18_linux-x64_bin.tar.gz -C /usr/lib/jvm
update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk-18.0.2.1/bin/java 1
