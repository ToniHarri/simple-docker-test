# Use a pre-defined image from Docker Hub.
FROM php:7.2-fpm

# Expose container port 80 for this project.
EXPOSE 80

# Use WORKDIR to specify that all subsequent actions should be taken from the
# this directory in your image filesystem (never the host’s filesystem).
WORKDIR /var/www/app

# Copy all (.) the files from host (the same folder this file is in) to the
# image location (/var/www/app)
COPY . /var/www/app

# Install php extensions:
RUN docker-php-ext-install pdo_mysql

# Use custom php.ini
COPY .Docker/Php/php.ini $PHP_INI_DIR/conf.d/

# To build the file:
# docker build --tag simple-dockerfile-test .
#
# To run this file only:
# docker run --publish 80:80 --name docker-test simple-dockerfile-test
# --detach -flag will allow you to run the container in the background.
