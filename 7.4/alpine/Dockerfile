FROM ghcr.io/mileschou/xdebug:7.4-alpine

LABEL org.opencontainers.image.source="https://github.com/MilesChou/docker-php-tester" \
    maintainer="MilesChou <jangconan@gmail.com>"

ENV COMPOSER_PATH /usr/local/bin/composer

# Install extensions
RUN set -xe && \
        # Runtime dependency
        apk add --no-cache \
            libgmpxx \
            libjpeg-turbo \
            libmemcached-libs \
            libpng \
            libzip \
            make \
        && \
        apk add --no-cache --virtual .build-deps \
            autoconf \
            cyrus-sasl-dev \
            g++ \
            gmp-dev \
            libjpeg-turbo-dev \
            libmemcached-dev \
            libpng-dev \
            libxml2-dev \
            libzip-dev \
            zlib-dev \
        && \
        # See https://github.com/docker-library/php/issues/912#issuecomment-559918036
        docker-php-ext-configure gd \
            --with-jpeg \
        && \
        docker-php-ext-install -j $(getconf _NPROCESSORS_ONLN) \
            bcmath \
            exif \
            gd \
            gmp \
            pdo_mysql \
            soap \
            sockets \
            zip \
        && \
        pecl install \
            memcached \
            redis \
        && \
        docker-php-ext-enable \
            memcached \
            redis \
        && \
        apk del .build-deps \
        && \
        php -m

# Install Composer v2
COPY --from=composer:2 /usr/bin/composer /usr/local/bin/composer
