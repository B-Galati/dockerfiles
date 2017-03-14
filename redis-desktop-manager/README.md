# How to use

[Redis Desktop Manager](https://redisdesktop.com/) on docker. Enjoy !

```bash
docker run  -it --rm \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $HOME/.rdm:/root/.rdm \
    -e DISPLAY \
    --device /dev/dri \
    -e SSH_AUTH_SOCK
    -v $SSH_AUTH_SOCK:$SSH_AUTH_SOCK \
    --name redis-desktop-manager \
    benoitg/redis-desktop-manager
```
