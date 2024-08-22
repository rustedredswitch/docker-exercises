FROM ubuntu
RUN apt-get -y update && apt-get -y install nginx
RUN rm /usr/share/nginx/html/index.html
COPY default.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80/tcp
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
