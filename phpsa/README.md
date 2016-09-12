# How to use

Docker binary for [phpsa](https://phpsa.dmtry.me/) which a static analyse tool.

```bash
docker run -it --rm \
    -u="$UID:$GID" \
    -v $(pwd):/app \
    --name phpsa \
    benoitg/phpsa \
    check <file|folder>
```
