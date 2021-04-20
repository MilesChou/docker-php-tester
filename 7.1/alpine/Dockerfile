FROM ghcr.io/mileschou/xdebug:7.1-alpine

LABEL org.opencontainers.image.source="https://github.com/MilesChou/docker-php-tester" \
    maintainer="MilesChou <jangconan@gmail.com>"

ENV COMPOSER_PATH /usr/local/bin/composer

# Install extensions
RUN set -xe && \
        # Runtime dependency
        apk add --no-cache \
            libgmpxx \
            libjpeg-turbo \
            libmcrypt \
            libmemcached-libs \
            libpng \
            make \
            unzip \
        && \
        apk add --no-cache --virtual .build-deps \
            autoconf \
            cyrus-sasl-dev \
            g++ \
            gmp-dev \
            libjpeg-turbo-dev \
            libmcrypt-dev \
            libmemcached-dev \
            libpng-dev \
            libxml2-dev \
            zlib-dev \
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
        apk del .build-deps \
        && \
        php -m

# Install Composer v2
COPY --from=composer:2 /usr/bin/composer /usr/local/bin/composer
