FROM ubuntu:20.04
RUN mkdir -p /usr/share/zoneinfo/Europe
RUN echo "This file is created to install Apache2 (no_interactive)" > /usr/share/zoneinfo/Europe/Minsk
RUN ln -sf /usr/share/zoneinfo/Europe/Minsk /etc/localtime
RUN apt-get update && apt-get install -y  apache2
COPY ./WebPage/index.html /var/www/html
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D","FOREGROUND"]
