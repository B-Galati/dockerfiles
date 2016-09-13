FROM debian:latest
MAINTAINER Benoit GALATI <benoit.galati@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
  keepass2

RUN useradd -ms /bin/bash keepass \
	&& cd && cp -R .bashrc .profile /home/keepass \
	&& chown -R keepass:keepass /home/keepass

USER keepass

ENV HOME /home/keepass

WORKDIR /home/keepass

CMD keepass2
