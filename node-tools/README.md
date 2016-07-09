Some usefull node tools :

- angular-cli

# Usage

Example with angular-cli :

```bash
docker run  -it --rm \
    -v $(pwd):/usr/src/app \
    -v $(dirname $SSH_AUTH_SOCK):$(dirname $SSH_AUTH_SOCK) \
    -e SSH_AUTH_SOCK \
    --name node-tools \
    benoitg/node-tools ng new angular-app
```
