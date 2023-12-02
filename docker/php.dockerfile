FROM php:8.2.13-fpm-alpine3.17

ADD ./php/www.conf /usr/local/etc/php-fpm.d/www.conf

RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel

RUN mkdir -p /var/www/html

# Don't add the 'public' contents to the web root, we'll do this later
# By explicitly building and moving the React Native Web front end in there
#ADD ../public /var/www/html

#RUN chmod -R 777 /var/www/html/storage
#RUN chmod -R 777 /var/www/html/bootstrap/cache

RUN docker-php-ext-install pdo pdo_mysql

RUN chown -R laravel:laravel /var/www/html
