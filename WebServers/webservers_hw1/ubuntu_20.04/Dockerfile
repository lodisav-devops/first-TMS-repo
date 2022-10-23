FROM ubuntu:20.04
RUN mkdir -p /usr/share/zoneinfo/Europe && \
    echo "This file is created to install Apache2 (no_interactive)" > /usr/share/zoneinfo/Europe/Minsk && \
    ln -sf /usr/share/zoneinfo/Europe/Minsk /etc/localtime && \
    apt-get update && apt-get install -y  apache2 && \
    mkdir -p /opt/apache2/html && mkdir -p /opt/apache2/logs
COPY ./apache2.conf /etc/apache2
COPY ./other-vhosts-access-log.conf /etc/apache2/conf-available
COPY ./webub20.04.com.conf /etc/apache2/sites-available
RUN a2ensite webub20.04.com.conf && a2dissite 000-default.conf
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D","FOREGROUND"]
