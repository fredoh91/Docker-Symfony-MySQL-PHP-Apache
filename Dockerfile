FROM php:8.2-apache

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y wget && \
    apt-get install -yqq nodejs npm

RUN docker-php-ext-install mysqli pdo pdo_mysql && \
    docker-php-ext-enable mysqli pdo_mysql

# Install composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php composer-setup.php && php -r "unlink('composer-setup.php');" && \
    mv composer.phar /usr/local/bin/composer

# Symfony CLI
RUN wget https://get.symfony.com/cli/installer -O - | bash && \
    \mv /root/.symfony5/bin/symfony /usr/local/bin/symfony

# fichier de configuration d'apache
COPY apache.conf /etc/apache2/sites-available/000-default.conf

# WORKDIR /var/www/html
WORKDIR /var/www/

EXPOSE 80