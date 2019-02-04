FROM ghifari160/apache-php73:18.04

LABEL maintainer "Ghifari160 <ghifari160@ghifari160.com>"

# Disable interactive functions
ENV DEBIAN_FRONTEND noninteractive

# Download phpMyAdmin
RUN mkdir -p /tmp/g16 && \
    wget https://files.phpmyadmin.net/phpMyAdmin/4.8.5/phpMyAdmin-4.8.5-all-languages.tar.gz -O /tmp/g16/phpmyadmin.tar.gz

# Add init script
RUN mkdir -p /etc/g16
ADD init.sh /etc/g16/pma_init.sh
RUN chown root:root /etc/g16/pma_init.sh && chmod 711 /etc/g16/pma_init.sh

VOLUME ["/var/www"]

ENTRYPOINT ["/etc/g16/pma_init.sh"]
