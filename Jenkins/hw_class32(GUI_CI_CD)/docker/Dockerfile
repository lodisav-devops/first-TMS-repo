FROM ubuntu:22.04
RUN apt-get update && apt-get install -y  apache2 && \
    mkdir -p /opt/apache2/html /opt/apache2/logs /opt/cert
COPY ./cert /opt/cert
COPY ./apache2.conf /etc/apache2
COPY ./webub22.04.com.conf /etc/apache2/sites-available
COPY ./index.html /opt/apache2/html
RUN chown -R www-data:www-data /opt/cert && \
    a2enmod ssl && \
    a2ensite webub22.04.com.conf && a2dissite 000-default.conf
ARG DOCKER_IMAGES_NAME
ARG DOCKER_IMAGES_TAG
ARG DOCKER_CONTAINER_REDIRECT
ENV ENV_IMAGES_NAME $DOCKER_IMAGES_NAME
ENV ENV_IMAGES_TAG $DOCKER_IMAGES_TAG
ENV ENV_CONTAINER_REDIRECT $DOCKER_CONTAINER_REDIRECT
WORKDIR /opt/apache2/html/
RUN echo "This Image have name=$ENV_IMAGES_NAME and tag=$ENV_IMAGES_TAG" >> index.html && \
    sed -i "s/Redirect\ permanent\ \/\ https\:\/\/192.168.100.25\:44300\//Redirect\ permanent\ \/\ https\:\/\/192.168.100.25\:$ENV_CONTAINER_REDIRECT\//" /etc/apache2/sites-available/webub22.04.com.conf
EXPOSE 80
EXPOSE 443
CMD ["/usr/sbin/apache2ctl", "-D","FOREGROUND"]
