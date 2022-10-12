FROM centos:7
RUN yum -y update && yum install -y epel-release && yum install -y nginx
COPY ./WebPage/index.html /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
