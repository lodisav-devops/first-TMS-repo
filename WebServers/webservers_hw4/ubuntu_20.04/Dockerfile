FROM ubuntu:20.04
RUN mkdir -p /usr/share/zoneinfo/Europe && \
    echo "This file is created to install Apache2 (no_interactive)" > /usr/share/zoneinfo/Europe/Minsk && \
    ln -sf /usr/share/zoneinfo/Europe/Minsk /etc/localtime && \
    apt-get update && apt-get install -y apache2 libapache2-mod-wsgi && \
    mkdir -p /opt/apache2/html /opt/apache2/logs /opt/cert
COPY ./cert /opt/cert
COPY ./webub20.04.com.conf /etc/apache2/sites-available
RUN chown -R www-data:www-data /opt/cert && \
    a2enmod wsgi ssl && \
    a2ensite webub20.04.com.conf && a2dissite 000-default.conf
EXPOSE 80
EXPOSE 443
CMD ["/usr/sbin/apache2ctl", "-D","FOREGROUND"]
