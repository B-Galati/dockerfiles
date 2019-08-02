FROM ruby:2
MAINTAINER Benoit Galati <benoit.galati@gmail.com>

ENV LANG="en_US.UTF-8" \
    LC_ALL="en_US.UTF-8" \
    LANGUAGE="en_US.UTF-8" \
    DEBIAN_FRONTEND=noninteractive

RUN echo "LC_ALL=en_US.UTF-8" >> /etc/environment \
    && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen \
    && echo "LANG=en_US.UTF-8" > /etc/locale.conf \
    && apt-get update \
    && apt-get install -y ca-certificates locales \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && locale-gen en_US.UTF-8

ENV GOSU_VERSION 1.11
RUN wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64" \
    && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc" \
    && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 \
    && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu \
    && rm -rf /usr/local/bin/gosu.asc ~/.gnupg \
    && chmod +x /usr/local/bin/gosu \
    && gosu nobody true

RUN groupadd --gid 1000 ruby \
  && useradd --uid 1000 --gid ruby --shell /bin/bash --create-home ruby \
  && mkdir /app \
  && chown -R ruby:ruby /app /home/ruby

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

WORKDIR /app

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
