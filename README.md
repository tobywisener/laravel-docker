# docker-laravel

This is a framework for building a laravel app within Docker.

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

To enter the CLI for your docker container at any time, run:
```
docker compose run --rm php /bin/sh
```
