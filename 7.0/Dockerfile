FROM php:7.0

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ENV DOCKER_BUCKET get.docker.com
ENV DOCKER_VERSION 1.12.1
ENV DOCKER_SHA256 05ceec7fd937e1416e5dce12b0b6e1c655907d349d52574319a1e875077ccb79

# Install Docker Client
RUN set -x \
	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz \
	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - \
	&& tar -xzvf docker.tgz \
	&& mv docker/* /usr/local/bin/ \
	&& rmdir docker \
	&& rm docker.tgz \
	&& docker -v

# Install extensions
RUN set -xe && \
        apt-get update && apt-get install --no-install-recommends --no-install-suggests -y \
            libbz2-dev \
            zlib1g-dev \
        && \
        docker-php-ext-install \
            bz2 \
            pdo \
            pdo_mysql \
            zip \
        && rm -r /var/lib/apt/lists/* && \
        pecl install xdebug-2.4.0 && \
        echo "zend_extension=/usr/local/lib/php/extensions/no-debug-non-zts-20151012/xdebug.so" > /usr/local/etc/php/conf.d/xdebug.ini

# Install testing packages
RUN set -xe && \
        curl -LOs http://codeception.com/codecept.phar && \
            chmod +x codecept.phar && \
            mv codecept.phar /usr/local/bin/codecept && \
        curl -LOs https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar && \
            chmod +x phpcs.phar && \
            mv phpcs.phar /usr/local/bin/phpcs && \
        curl -LOs http://static.phpmd.org/php/latest/phpmd.phar && \
            chmod +x phpmd.phar && \
            mv phpmd.phar /usr/local/bin/phpmd

# Install Composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php -r "if (hash_file('SHA384', 'composer-setup.php') === 'e115a8dc7871f15d853148a7fbac7da27d6c0030b848d9b3dc09e2a0388afed865e6a3d6b3c0fad45c48e2b5fc1196ae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');" && \
    mv composer.phar /usr/local/bin/composer

# Install Deploy tools
RUN curl -LOs https://github.com/rancher/rancher-compose/releases/download/v0.9.0/rancher-compose-linux-amd64-v0.9.0.tar.gz && \
    tar zxvf rancher-compose-linux-amd64-v0.9.0.tar.gz && \
    cd rancher-compose-v0.9.0 && \
    mv rancher-compose /usr/local/bin/ && \
    cd .. && rm -R rancher-compose-linux-amd64-v0.9.0.tar.gz rancher-compose-v0.9.0
