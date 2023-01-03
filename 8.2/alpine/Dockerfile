#
# NOTE: THIS DOCKERFILE IS GENERATED VIA "update.sh"
#
# PLEASE DO NOT EDIT IT DIRECTLY.
#
FROM php:8.2-alpine

LABEL org.opencontainers.image.source="https://github.com/MilesChou/docker-xdebug" \
    repository="https://github.com/MilesChou/docker-xdebug" \
    maintainer="MilesChou <jangconan@gmail.com>"

# install xdebug
RUN set -xe && \
        apk add --no-cache --virtual .build-deps \
            autoconf \
            g++ \
            linux-headers \
            make \
        && \
        pecl install xdebug && \
        docker-php-ext-enable xdebug && \
        apk del .build-deps && \
        php -v && \
        php -m

COPY docker-xdebug-* /usr/local/bin/
