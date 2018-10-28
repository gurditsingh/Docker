#version: 0.0.1
FROM ubuntu:14.04
MAINTAINER gurdit singh "gurdit@singh.com"
RUN apt-get update && apt-get install -y nginx
RUN echo 'hi, i am in your container' \
>/usr/share/nginx/html/index.html
RUN rm -v /etc/nginx/nginx.conf
ADD nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
