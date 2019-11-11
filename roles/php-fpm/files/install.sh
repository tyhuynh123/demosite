#!/bin/bash

git clone https://github.com/tyhuynh123/demofiles.git

cd demofiles && cp * -R /var/www/html/

mkdir -p /var/www/html/gallery-images && chmod 777 /var/www/html/gallery-images
mkdir -p /var/www/html/resources/cache && chmod 777 /var/www/html/resources/cache

apt-get install composer -y

cd /var/www/html/ 

composer install

sudo service apache2 restart
