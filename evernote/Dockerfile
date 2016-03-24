# DESCRIPTION:
#	Just to backup notes with windows app
#
# USAGE:
#	docker run  -it \
# 	-v /tmp/.X11-unix:/tmp/.X11-unix \
#	-e DISPLAY=unix$DISPLAY \
#   -v $HOME/evernote_backup:/root/backup \
# 	--cpuset-cpus 0 \
#	--name evernote benoitg/evernote
FROM jess/wine
MAINTAINER Benoit GALATI <benoit.galati@gmail.com>

RUN apt-get update && apt-get install -y ca-certificates

ADD https://evernote.com/download/get.php?file=Win /usr/src/evernote.exe

RUN echo "wine .wine/drive_c/Program\ Files/Evernote/Evernote/Evernote.exe" >> /root/.bash_history \
	&& echo "wine wineboot --init && wine /usr/src/evernote.exe" >> /root/.bash_history

CMD [ "bash" ]
