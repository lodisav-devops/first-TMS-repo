FROM ubuntu:22.04
RUN mkdir -p /usr/share/zoneinfo/Europe &&\
    echo "This file is created to install Apache2 (no_interactive)" > /usr/share/zoneinfo/Europe/Minsk &&\
    ln -sf /usr/share/zoneinfo/Europe/Minsk /etc/localtime &&\
    apt-get update && apt-get install -y  apache2 &&\
    mkdir -p /opt/apache2/html && mkdir -p /opt/apache2/logs &&\
    #install php 7.2
    apt-get install -y software-properties-common &&\
    add-apt-repository -y ppa:ondrej/php &&\
    apt-get install -y php7.2 libapache2-mod-php7.2 php7.2-mysql &&\
    #install phpmyadmin
    apt-get install -y wget &&\
    wget -c https://files.phpmyadmin.net/phpMyAdmin/5.2.0/phpMyAdmin-5.2.0-all-languages.tar.gz &&\
    tar -xzvf phpMyAdmin-5.2.0-all-languages.tar.gz &&\
    mv phpMyAdmin-5.2.0-all-languages /opt/apache2/html/pma
COPY ./cert /opt/cert
COPY ./php_page/test.php /opt/apache2/html
COPY ./phpmyadmin_config/config.inc.php /opt/apache2/html/pma
COPY ./apache2_configs/apache2.conf /etc/apache2
COPY ./apache2_configs/other-vhosts-access-log.conf /etc/apache2/conf-available
COPY ./apache2_configs/webub22.04.com.conf /etc/apache2/sites-available
RUN chown -R www-data:www-data /opt/cert && \
    chown -R www-data:www-data /opt/apache2/html/pma/ &&\
    rm phpMyAdmin-5.2.0-all-languages.tar.gz &&\
    a2enmod ssl && \
    a2ensite webub22.04.com.conf && a2dissite 000-default.conf
EXPOSE 80
EXPOSE 443
CMD ["/usr/sbin/apache2ctl", "-D","FOREGROUND"]
