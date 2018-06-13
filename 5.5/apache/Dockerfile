FROM php:5.5-apache
LABEL maintainer="MilesChou <jangconan@gmail.com>"

# install xdebug
RUN set -xe && \
        docker-php-source extract && \
        pecl install xdebug-2.5.5 && \
        docker-php-ext-enable xdebug && \
        docker-php-source delete && \
        php -v && \
        php -m
