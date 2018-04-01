# Usage

```bash
docker run  -it --rm \
    -v $(pwd):/usr/src/ \
    --name node-tools \
    -e HOST_UID \
    -e HOST_GID \
    benoitg/ruby bundle install
```

With docker-compose

```
web:
    build: ./docker
    volumes:
        - ./:/usr/src/
        - ./bundle/:/usr/local/bundle/
    expose:
        - "4000"
    ports:
        - "4000:4000"
    environment:
        - HOST_UID
        - HOST_GID
    command: bundle exec jekyll serve --drafts --watch --force_polling
```
