FROM nginx:latest

MAINTAINER Pomirleanu Florentin <pomirleanu.florentin@gmail.com>

RUN apt-get update && apt-get upgrade -y

#Copy the config file
COPY ./conf/default.conf /etc/nginx/conf.d/default.conf
