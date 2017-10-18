FROM node:7
MAINTAINER Benoit Galati <benoit.galati@gmail.com>

RUN chown -R node:root /usr/local/bin

USER node

RUN export PATH="$PATH:$(npm config get prefix)/lib/node_modules/bin" \
    && yarn global add \
        angular-cli \
        tslint \
        typescript \
        uglify-js \
        goops \
        browser-sync

ENV HOME /home/node

WORKDIR /usr/src/app
