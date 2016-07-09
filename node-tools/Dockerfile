# USAGE:
#    docker run  -it --rm \
#    -v $(pwd):/usr/src/app \
#    -v $(dirname $SSH_AUTH_SOCK):$(dirname $SSH_AUTH_SOCK) \
#    -e SSH_AUTH_SOCK \
#    --name node-tools \
#    benoitg/node-tools <command>
FROM node:6
MAINTAINER Benoit Galati <benoit.galati@gmail.com>

RUN useradd -ms /bin/bash node \
	&& cd && cp -R .bashrc .profile /home/node \
	&& chown -R node:node /home/node

RUN export PATH="$PATH:$(npm config get prefix)/lib/node_modules/bin" \
    && npm install -g angular-cli

USER node

ENV HOME /home/node

WORKDIR /usr/src/app
