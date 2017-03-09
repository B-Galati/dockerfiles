# [phan](https://github.com/etsy/phan)

```bash
docker run -it --rm \
    -u $(id -u):$(id -g) \
    -v $PWD:/app \
    --name phpsa \
    benoitg/php-tools \
    phan --help
```

# [phpsa](https://phpsa.dmtry.me/)

```bash
docker run -it --rm \
    -u $(id -u):$(id -g) \
    -v $PWD:/app \
    --name phpsa \
    benoitg/php-tools \
    phpsa
```
