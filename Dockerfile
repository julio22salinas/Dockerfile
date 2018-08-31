FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get install -y php libapache2-mod-php 
RUN apt-get install -y php-gd
RUN apt-get install -y wget
WORKDIR /var/www/html
RUN wget https://download.dokuwiki.org/get?id=8a269cc015a64b40e4c918699f1$
RUN tar -xvzf dokuwiki-8a269cc015a64b40e4c918699f1e1142.tgz
RUN rm dokuwiki-8a269cc015a64b40e4c918699f1e1142.tgz

EXPOSE 80


