# dockerfiles

Various docker images I create

# X server access control for GUI images

Make sure to set the right permission to the X server for your docker user by running this command :

```bash
xhost +SI:localuser:$(id -un)
```

Or if you are running docker as root :

```bash
xhost +SI:localuser:root
```

If you have any doubt you can also authorize anyone to connect to your X server but it's not recommended :

```bash
xhost +
```
