FROM ghifari160/apache-php56:16.04

MAINTAINER Ghifari160 <ghifari160@ghifari160.com>

# Disable interactive functions
ENV DEBIAN_FRONTEND noninteractive

# Download and install Wordpress
RUN mkdir -p /tmp/g16 && \
    wget https://files.phpmyadmin.net/phpMyAdmin/4.7.9/phpMyAdmin-4.7.9-all-languages.tar.gz -O /tmp/g16/phpmyadmin.tar.gz && \
    cd /var/www && tar -xvzf /tmp/g16/phpmyadmin.tar.gz && \
    rm -rf /var/www/html && mv /var/www/phpMyAdmin-4.7.9-all-languages /var/www/html

# Fix permission
RUN chown root:root /var/www/html && chmod 777 /var/www/html

VOLUME ["/var/www"]
