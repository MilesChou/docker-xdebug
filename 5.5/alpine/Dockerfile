#
# NOTE: THIS DOCKERFILE IS GENERATED VIA "update.sh"
#
# PLEASE DO NOT EDIT IT DIRECTLY.
#
FROM php:5.5-alpine

LABEL org.opencontainers.image.source="https://github.com/MilesChou/docker-xdebug" \
    repository="https://github.com/MilesChou/docker-xdebug" \
    maintainer="MilesChou <jangconan@gmail.com>"

# install xdebug
RUN set -xe && \
        docker-php-source extract && \
        apk add --no-cache --virtual .build-deps \
            autoconf \
            g++ \
            make \
        && \
        pecl install xdebug-2.5.5 && \
        docker-php-ext-enable xdebug && \
        docker-php-source delete && \
        apk del .build-deps && \
        php -v && \
        php -m

COPY docker-xdebug-* /usr/local/bin/
