FROM php:5.6-apache

RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng12-dev \
        libicu-dev \
        make \
        php5-dev \
        php-pear \
        libcurl4-gnutls-dev \
    && docker-php-ext-install intl mbstring \
    && pecl install mongo xdebug

ADD php.ini $PHP_INI_DIR/php.ini
ADD symfony.conf /etc/apache2/sites-available/symfony.conf

RUN find / -name "mongo.so" -exec echo "extension={}" > $PHP_INI_DIR/conf.d/ext-mongo.ini \; \
    && find / -name "xdebug.so" -exec echo "zend_extension={}" > $PHP_INI_DIR/conf.d/ext-xdebug.ini \; \
    && a2ensite symfony.conf \
    && a2enmod rewrite
