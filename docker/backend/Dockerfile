FROM php:8.5-fpm-alpine

ARG UID=1000
ARG GID=1000

WORKDIR /var/www/html

RUN apk add --no-cache libpq \
    && apk add --no-cache --virtual .pgsql-build-deps postgresql-dev \
    && docker-php-ext-install pdo_pgsql \
    && apk del .pgsql-build-deps