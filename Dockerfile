FROM ubuntu:16.04
MAINTAINER Andryu "andryu101@gmail.com"
ENV REFRESHED_AT 2017-11-01
RUN apt-get -yqq update; apt-get -yqq install nginx
RUN mkdir -p /var/www/html/website
ADD global.conf /etc/nginx/conf.d/
ADD nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
