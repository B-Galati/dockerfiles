FROM composer

MAINTAINER Benoit GALATI <benoit.galati@gmail.com>

RUN apk add --no-cache --virtual .build-deps \
    autoconf \
    file \
    g++ \
    gcc \
    libc-dev \
    make \
    pkgconf \
    re2c \
    icu-dev

RUN git clone https://github.com/nikic/php-ast.git /tmp/php-ast \
    && cd /tmp/php-ast \
    && phpize \
    && ./configure \
    && make -j4 \
    && make install \
    && docker-php-ext-enable ast \
    && cd \
    && rm -rf /tmp/php-ast

RUN apk del .build-deps

RUN composer global require phan/phan friendsofphp/php-cs-fixer

RUN docker-php-ext-install pcntl intl

env PATH /tmp/vendor/bin:$PATH

ENTRYPOINT []
CMD []
