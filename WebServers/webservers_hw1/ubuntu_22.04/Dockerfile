FROM ubuntu:22.04
RUN apt-get update && apt-get install -y  apache2
RUN mkdir -p /opt/apache2/html && mkdir -p /opt/apache2/logs
COPY ./apache2.conf /etc/apache2
COPY ./other-vhosts-access-log.conf /etc/apache2/conf-available
COPY ./webub22.04.com.conf /etc/apache2/sites-available
RUN a2ensite webub22.04.com.conf && a2dissite 000-default.conf
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D","FOREGROUND"]
