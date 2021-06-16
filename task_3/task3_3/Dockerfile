FROM  centos:latest
LABEL  maintainer=vakong415@i.ua version=3.0 environment=task3.2.1
ENV DEVOPS="vakong415"
RUN yum update -y &&  yum upgrade -y \
yum install -y epel-release && yum update -y &&  yum install nginx -y
COPY nginx.conf /etc/nginx/nginx.conf
RUN rm -rf /etc/nginx/conf.d/*.con*
COPY custom_conf.conf /etc/nginx/conf.d/ 
COPY create_index.sh /opt/create_index.sh
RUN chmod +x /opt/create_index.sh && sh /opt/create_index.sh
#COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]