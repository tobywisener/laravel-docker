# docker-laravel

This is a framework for building a laravel app within Docker. The Dockerfile builds from a slimline PHP 8.2 Alpine image and includes nginx, php, mysql and phpmyadmin for a sane development environment. You may want to edit the various config files inside the `docker` directory and docker-compose.yml.

Run docker and build:

```
docker compose up -d --build
```

Create laravel project via composer:

```
docker compose run --rm composer create-project laravel/laravel laravel
```

If access Forbidden:

```
docker compose run --rm php /bin/sh
```

and then - 

```
chown -R laravel:laravel /var/www/html
```

To access PHPMyAdmin, go to `http://localhost:3307`

To enter the CLI for your docker container at any time, run:
```
docker compose run --rm php /bin/sh
```
