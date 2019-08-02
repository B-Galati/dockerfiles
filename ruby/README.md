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
        - ~/.cache/bundle:/home/ruby/.cache/bundle
    expose:
        - "4000"
    ports:
        - "4000:4000"
    command: bundle exec jekyll serve --drafts --watch --force_polling
```
