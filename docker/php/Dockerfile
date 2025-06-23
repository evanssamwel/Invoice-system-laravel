FROM php:8.0-fpm

# Install system packages and PHP extensions
RUN apt-get update && apt-get install -y \
    curl unzip git zip libzip-dev libxml2-dev libonig-dev \
    && docker-php-ext-install pdo pdo_mysql mbstring xml zip

# Install Composer globally
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /var/www
