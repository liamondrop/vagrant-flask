#!/usr/bin/env bash

echo "$AGENT Running $0"

# # Check if php5-fpm is installed
# type php5-fpm >/dev/null 2>&1 && PHP5_INSTALL=false || PHP5_INSTALL=true

# # Install php5
# if $PHP5_INSTALL; then
#     echo "$AGENT Install PHP-FPM & APC Cache"
#     apt-get install -yq python-software-properties software-properties-common
#     add-apt-repository ppa:ondrej/php5
#     apt-get -q update

#     echo "$AGENT Install all the php things"
#     apt-get -yq install php5-common php5-mysql php5-xmlrpc \
#         php5-cgi php5-curl php5-gd php5-cli php5-fpm php-pear \
#         php5-dev php5-imap php5-mcrypt php5-memcache

#     echo "$AGENT Update php.ini"
#     stop php5-fpm
#     mv /etc/php5/fpm/php.ini /etc/php5/fpm/php.ini.bak
#     cp /home/vagrant/php/php.ini /etc/php5/fpm/
#     start php5-fpm
# fi