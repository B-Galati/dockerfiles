# Usage

```bash
docker run  -it --rm \
    -v $(pwd):/usr/src/ \
    --name node-tools \
    -e DOCKER_UID \
    -e DOCKER_GID \
    benoitg/ruby bunle install
```

With docker-compose

```
web:
    build: ./docker
    volumes:
        - ./:/usr/src/
    ports:
        - 4000:4000
    environment:
        - DOCKER_UID
        - DOCKER_GID
    command: bundle exec jekyll serve --drafts --watch --force_polling
```
