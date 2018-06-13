FROM php:7.1-apache
LABEL maintainer="MilesChou <jangconan@gmail.com>"

# install xdebug
RUN set -xe && \
        docker-php-source extract && \
        pecl install xdebug && \
        docker-php-ext-enable xdebug && \
        docker-php-source delete && \
        php -v && \
        php -m
