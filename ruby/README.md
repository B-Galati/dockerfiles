# Usage

```bash
docker run  -it --rm \
    -v $(pwd):/app \
    --name ruby \
    benoitg/ruby bundle install
```

With docker-compose

```
web:
    image: benoitg/ruby
    volumes:
        - ./:/app
        - ~/.bundle/cache:/home/ruby/.bundle/cache
    expose:
        - "4000"
    ports:
        - "4000:4000"
    command: bundle exec jekyll serve --drafts --watch --force_polling
```
