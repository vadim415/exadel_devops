FROM nginx:alpine
LABEL DEVOPS="vakong415" maintainer=vakong415@i.ua version=1.0 environment=prod
COPY nginx.conf /etc/nginx/nginx.conf
RUN rm -rf /etc/nginx/conf.d/*.con*
COPY custom_conf.conf /etc/nginx/conf.d/ 
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
