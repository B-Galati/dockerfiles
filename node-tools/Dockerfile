FROM node:6
MAINTAINER Benoit Galati <benoit.galati@gmail.com>

RUN useradd -ms /bin/bash node \
	&& cd && cp -R .bashrc .profile /home/node \
	&& chown -R node:node /home/node

RUN export PATH="$PATH:$(npm config get prefix)/lib/node_modules/bin" \
    && npm install -g angular-cli \
    && npm install -g tslint typescript

USER node

ENV HOME /home/node

WORKDIR /usr/src/app
