FROM node:8
MAINTAINER Benoit Galati <benoit.galati@gmail.com>

RUN chown -R node:root /usr/local/bin

USER node

RUN export PATH="$PATH:$(npm config get prefix)/lib/node_modules/bin" \
    && yarn global add \
        tslint \
        typescript \
        uglify-js \
        uglifycss \
        goops \
        browser-sync

ENV HOME /home/node

WORKDIR /usr/src/app
