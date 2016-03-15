Composer php7 and no xdebug for faster execution time

# Usage

```bash
docker run  -it --rm \
    -v $HOME/.composer:/home/composer/composer \
    -v $(pwd):/app \
    -v $(dirname $SSH_AUTH_SOCK):$(dirname $SSH_AUTH_SOCK) \
    -e SSH_AUTH_SOCK \
    --name composer \
    benoitg/composer -vv
```
