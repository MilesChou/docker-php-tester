FROM ghcr.io/mileschou/xdebug:7.1-apache

LABEL org.opencontainers.image.source="https://github.com/MilesChou/docker-php-tester" \
    maintainer="MilesChou <jangconan@gmail.com>"

ENV COMPOSER_PATH /usr/local/bin/composer

# Install extensions
RUN set -xe && \
        apt-get update -y && apt-get install -y --no-install-recommends --no-install-suggests \
            libgmp-dev \
            libjpeg-dev \
            libmcrypt-dev \
            libmemcached-dev \
            libpng-dev \
            libxml2-dev \
            zlib1g-dev \
            unzip \
        && \
        apt-get clean && rm -rf /var/lib/apt/lists/* \
        && \
        docker-php-ext-configure gd \
            --with-jpeg-dir=/usr/include/ \
            --with-png-dir=/usr/include/ \
        && \
        docker-php-ext-install -j $(getconf _NPROCESSORS_ONLN) \
            bcmath \
            exif \
            gd \
            gmp \
            mcrypt \
            pdo_mysql \
            soap \
            sockets \
            zip \
        && \
        pecl install \
            memcached \
            mongodb \
            redis \
            swoole-2.2.0 \
        && \
        docker-php-ext-enable \
            memcached \
            mongodb \
            redis \
            swoole \
        && \
        php -m

# Install Composer v2
COPY --from=composer:2 /usr/bin/composer /usr/local/bin/composer
