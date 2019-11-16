#
# NOTE: THIS DOCKERFILE IS GENERATED VIA "update.sh"
#
# PLEASE DO NOT EDIT IT DIRECTLY.
#
FROM php:7.3-alpine

LABEL repository="https://github.com/MilesChou/docker-xdebug"
LABEL homepage="https://github.com/MilesChou/docker-xdebug"
LABEL maintainer="MilesChou <jangconan@gmail.com>"

# install xdebug
RUN set -xe && \
        docker-php-source extract && \
        apk add --no-cache --virtual .build-deps \
            autoconf \
            g++ \
            make \
        && \
        pecl install xdebug && \
        docker-php-ext-enable xdebug && \
        docker-php-source delete && \
        apk del .build-deps && \
        php -v && \
        php -m

COPY docker-xdebug-* /usr/local/bin/
