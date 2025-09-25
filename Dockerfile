# Use official PHP 8.2 with Apache
FROM php:8.2-apache

# Install mysqli & pdo_mysql extensions for MySQL
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy your project files into the container
COPY . /var/www/html/

# Expose Apache on port 80
EXPOSE 80
