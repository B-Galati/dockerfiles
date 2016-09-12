FROM composer/composer:php7

MAINTAINER Benoit GALATI <benoit.galati@gmail.com>

RUN useradd -ms /bin/sh composer \
    && chown -R composer:composer /home/composer

USER composer

ENV HOME /home/composer
ENV COMPOSER_HOME /home/composer/composer

RUN composer global require ovr/phpsa

ENTRYPOINT ["/home/composer/composer/vendor/bin/phpsa"]
