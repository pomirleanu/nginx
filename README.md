# NGINX Docker Image

Docker container to install and run [NGINX](https://www.nginx.com/).

[![Build Status](https://travis-ci.org/pomirleanu/nginx.svg?branch=master)](https://travis-ci.org/pomirleanu/nginx)

[![Automated Build](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)](https://hub.docker.com/r/pomirleanu/nginx/builds/)

## What is NGINX ?
NGINX (High-performance web server or proxy server) is a better alternative APACHE.

## Getting image
```shell
docker pull pomirleanu/nginx
```

## Basic usage

```shell
docker run -v /path/to/your/app:/var/www/html -d pomirleanu/nginx
```

## Running your NGINX Web Server 

### Running image
Run the NGINX image, mounting a directory from your host.
```shell
docker run -it --name nginx -v /path/to/your/app:/var/www/html pomirleanu/nginx
```

or using [Docker Compose](https://docs.docker.com/compose/):

```shell
version: '2'
services:
  nginx:
    container_name: nginx
    image: pomirleanu/nginx
    entrypoint: nginx
    volumes:
      - /path/to/your/app:/var/www/html
```

### Logging
```shell
docker logs nginx
```
or using [Docker Compose](https://docs.docker.com/compose/):
```shell
docker-compose logs nginx
```

