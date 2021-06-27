FROM php:7.2.0-apache

#Install git and MySQL extensions for PHP

RUN apt-get update && apt-get install -y git
RUN docker-php-ext-install pdo pdo_mysql mysqli
RUN a2enmod rewrite
COPY ./openPIP/. /var/www/html/

EXPOSE 80/tcp
EXPOSE 443/tcp