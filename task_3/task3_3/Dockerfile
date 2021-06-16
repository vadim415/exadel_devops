FROM  centos:latest
ENV DEVOPS=vakong415
LABEL DEVOPS="vakong415" maintainer=vakong415@i.ua version=2.0 environment=extra_task.3
RUN yum update -y &&  yum upgrade -y \
yum install -y epel-release && yum update -y &&  yum install nginx -y
COPY nginx.conf /etc/nginx/nginx.conf
RUN rm -rf /etc/nginx/conf.d/*.con*
COPY custom_conf.conf /etc/nginx/conf.d/ 
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
