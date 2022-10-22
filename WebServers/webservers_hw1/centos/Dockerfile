FROM centos:7
RUN mkdir -p /opt/nginx/html && mkdir -p /opt/nginx/logs && \
    yum -y update && yum install -y epel-release && yum install -y nginx
COPY ./nginx.conf /etc/nginx
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
