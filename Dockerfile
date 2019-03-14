FROM ubuntu:18.04

LABEL MAINTAINER=mtortega@pronoide.es

RUN apt-get update

RUN apt-get install nginx -y

RUN echo '<marquee>Homer Web Page!</marquee>' \
    > /var/www/html/index.html

VOLUME [ "/my-nginx-data" ]

ADD filetocontainer1.txt /my-files/

COPY filetocontainer2.txt /my-files/

EXPOSE 80