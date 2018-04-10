#!/bin/bash

function pma_install()
{
  cd /var/www && tar -xvzf /tmp/g16/phpmyadmin.tar.gz
  cp -a /var/www/phpMyAdmin-4.7.9-all-languages/. /var/www/html/
  rm -rf /var/www/phpMyAdmin-4.7.9-all-languages
}

if [ ! -d "/var/www/html/setup" ]; then
  pma_install
fi

/usr/sbin/apachectl -D FOREGROUND
