FROM ubuntu:18.04

RUN apt-get update -y && apt-get install -y apache2

WORKDIR /var/www/html

COPY ./index.html /var/www/html

EXPOSE 80

CMD ["apache2ctl","-D", "FOREGROUND"]

