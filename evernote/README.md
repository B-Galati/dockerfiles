# How to use it

docker run  -it  \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $HOME/evernote_backup:/root/evernote \
    -e DISPLAY=unix$DISPLAY \
    --cpuset-cpus 0 \
    --name $CONTAINER_NAME \
    benoitg/evernote

This command will give you a prompt. Look in command history to intall evernote and install evernote. Those commands should look like :

```bash
wine wineboot --init && wine /usr/src/evernote.exe
wine .wine/drive_c/Program\ Files/Evernote/Evernote/Evernote.exe
```

