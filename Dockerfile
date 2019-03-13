FROM ubuntu:18.04

RUN useradd tomy

LABEL MAINTAINER=mtortega@pronoide.es

RUN apt-get update

RUN apt-get install nginx -y

RUN echo '<marquee>Homer Web Page!</marquee>' \
    > /var/www/html/index.html

ENV DATABASE_IP 80.45.32.1
ENV DATABASE_USER pakito

EXPOSE 80

USER tomy