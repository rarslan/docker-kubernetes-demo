FROM php:7.2.4-apache

COPY apache_default /etc/apache2/sites-available/000-default.conf
RUN a2enmod rewrite

COPY public /var/www/html/public

# Install software 
RUN apt-get update && apt-get install -y git

CMD ["-D", "FOREGROUND"]