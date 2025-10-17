FROM php:8.2-fpm

# системные пакеты
RUN apt-get update && apt-get install -y \
    git zip unzip libzip-dev libpng-dev libonig-dev libxml2-dev \
    libicu-dev libcurl4-openssl-dev libxslt-dev libssl-dev \
    && docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd intl sockets

# Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# Установим рабочую директорию
WORKDIR /var/www

# Копируем (опционально)
# COPY . /var/www

# Права
RUN usermod -u 1000 www-data || true

# Устанавливаем npm-tools если нужно (опционально)
# Копирование конфига PHP-FPM
COPY ./docker/php/www.conf /usr/local/etc/php-fpm.d/www.conf

# Создание лог файла
RUN touch /var/log/php8.2-fpm.log && chmod 666 /var/log/php8.2-fpm.log