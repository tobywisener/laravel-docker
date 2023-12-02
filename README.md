# docker-laravel

This is a framework for building a laravel app within Docker. The Dockerfile builds from a slimline PHP 8.2 Alpine image and includes nginx, php, mysql and phpmyadmin for a sane development environment.

## Setup 

Firstly, edit the values in `.env` to your liking (http port, mysql credentials, database name etc).

1. Run docker and build:

```
docker compose up -d --build
```

2. Create laravel project via composer:

```
docker compose run --rm composer create-project laravel/laravel laravel
```

3. Next, run the following commands (to prevent permissions issues):

```
docker compose run --rm php /bin/sh
chown -R laravel:laravel /var/www/html
```

And you're all done!

## Other information

To access PHPMyAdmin, go to `http://localhost:3307`

To enter the CLI for your docker container at any time, run:
```
docker compose run --rm php /bin/sh
```
