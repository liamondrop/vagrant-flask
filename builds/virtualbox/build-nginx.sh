#!/usr/bin/env bash

echo "$AGENT Running $0"

# # Check if Nginx is installed
# type nginx >/dev/null 2>&1 && NGINX_INSTALL=false || NGINX_INSTALL=true

# # Install Nginx
# if $NGINX_INSTALL; then
#     echo "$AGENT Installing Nginx"
#     add-apt-repository ppa:nginx/stable
#     apt-get -q update
#     apt-get -yq install nginx

#     echo "$AGENT Updating Nginx Confs"
#     /etc/init.d/nginx stop
#     mv /etc/nginx /etc/nginx-previous
#     mkdir -p /usr/share/nginx/logs/
#     cp -r /home/vagrant/nginx /etc/
#     ln -s /etc/nginx/sites-available/$SITE_NAME /etc/nginx/sites-enabled/default
#     /etc/init.d/nginx start
# fi