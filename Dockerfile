FROM ubuntu:18.04

LABEL MAINTAINER=mtortega@pronoide.es

RUN apt-get update

RUN apt-get install nginx -y

RUN echo '<marquee>Homer Web Page!</marquee>' \
    > /var/www/html/index.html

EXPOSE 80

WORKDIR /var/www/html