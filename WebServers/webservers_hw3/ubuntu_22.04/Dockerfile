FROM ubuntu:22.04
RUN apt-get update && apt-get install -y  apache2 && \
    mkdir -p /opt/apache2/html /opt/apache2/logs /opt/cert
COPY ./cert /opt/cert
COPY ./apache2.conf /etc/apache2
COPY ./other-vhosts-access-log.conf /etc/apache2/conf-available
COPY ./webub22.04.com.conf /etc/apache2/sites-available
RUN chown -R www-data:www-data /opt/cert && \
    a2enmod ssl && \
    a2ensite webub22.04.com.conf && a2dissite 000-default.conf
EXPOSE 80
EXPOSE 443
CMD ["/usr/sbin/apache2ctl", "-D","FOREGROUND"]
