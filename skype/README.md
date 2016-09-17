# Usage

```bash
docker run \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $HOME/.skypeforlinux:/root/.config/skypeforlinux \
    -e DISPLAY \
    --device /dev/video0 \
    --device /dev/snd \
    --device /dev/dri \
    --group-add audio \
    --group-add video \
    --name skype \
    benoitg/skype" $@
```
