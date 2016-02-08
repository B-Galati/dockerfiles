# USAGE:
#	docker run  -it --rm \
#	-v $HOME/.composer:/home/composer/composer \
#   -v $(pwd):/app \
#	--name composer benoitg/composer
FROM composer/composer:php7
MAINTAINER Benoit GALATI <benoit.galati@gmail.com>

RUN useradd -ms /bin/sh composer \
    && chown -R composer:composer /home/composer

USER composer

ENV HOME /home/composer
ENV COMPOSER_HOME /home/composer/composer

