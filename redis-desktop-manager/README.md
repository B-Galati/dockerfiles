# How to use

[Redis Desktop Manager](https://redisdesktop.com/) on docker. Enjoy !

```bash
docker run  -it --rm \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY \
    --device /dev/dri \
    -v $(dirname $SSH_AUTH_SOCK):$(dirname $SSH_AUTH_SOCK) \
    --name redis-desktop-manager \
    benoitg/redis-desktop-manager
```
