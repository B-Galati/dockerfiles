# USAGE:
#	docker run  -it --rm \
# 	-v /tmp/.X11-unix:/tmp/.X11-unix \
#	-v $HOME/keepass:/home/keepass/keepass \
#       -v $HOME/.config/KeePass/KeePass.config.xml:/home/keepass/.config/KeePass/KeePass.config.xml
#	-e DISPLAY=unix$DISPLAY \
#	--name keepass2 benoitg/keepass2
#
# POSSIBLE ISSUES:
#	# 'Gtk: cannot open display: :0'
#	Try to set 'DISPLAY=your_host_ip:0' or run 'xhost +' on your host.
#	(see: http://stackoverflow.com/questions/28392949/running-chromium-inside-docker-gtk-cannot-open-display-0)
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
