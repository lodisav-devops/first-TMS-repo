FROM centos:7
COPY ./StartDB.sh /
RUN yum -y update && yum install -y epel-release && \
    yum install -y  https://download.postgresql.org/pub/repos/yum/reporpms/EL-7-x86_64/pgdg-redhat-repo-latest.noarch.rpm && \
    yum install -y postgresql14-server postgresql14-contrib &&\
    chown root /StartDB.sh && \
    chgrp root /StartDB.sh && \
    chmod 777 /StartDB.sh
EXPOSE 5432
CMD ["/bin/bash","-c","/StartDB.sh && tail -f /dev/null"]
