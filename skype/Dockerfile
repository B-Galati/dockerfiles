FROM debian:jessie
MAINTAINER Benoit Galati <benoit.galati@gmail.com>

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y curl ca-certificates supervisor --no-install-recommends \
    && curl -SL https://go.skype.com/skypeforlinux-64-alpha.deb -o /usr/src/skype.deb \
	&& dpkg --force-depends -i /usr/src/skype.deb \
	&& apt-get install -fy \
	&& rm -rf /var/lib/apt/lists/* \
    && mkdir -p /var/log/supervisor

# Use supervisor to run skype because it runs like a daemon...
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

ENTRYPOINT ["/usr/bin/supervisord"]
