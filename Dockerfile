FROM composer:1.6.3 AS composer

FROM php:7.2.3-cli

RUN apt-get update \
	&& apt-get install -y git

COPY --from=composer /usr/bin/composer /usr/bin/composer

WORKDIR /usr/local/src

COPY ./composer.json .

RUN composer install --no-autoloader

COPY ./src ./src

RUN composer dump-autoload