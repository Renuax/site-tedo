FROM php:8.0.2-fpm-alpine3.13
RUN docker-php-ext-install mysqli
