#!/usr/bin/env bash

echo "$AGENT Running $0"

# # Install mysql
# if $MYSQL_INSTALL; then
#     echo "$AGENT Installing MySQL"
#     apt-get -q update
#     debconf-set-selections <<< "mysql-server mysql-server/root_password password ${MYSQL_PASS}"
#     debconf-set-selections <<< "mysql-server mysql-server/root_password_again password ${MYSQL_PASS}"
#     apt-get -yq install mysqltuner mysql-server mysql-client libmysqlclient-dev
#     echo "GRANT ALL PRIVILEGES ON *.* to ${MYSQL_USER}@'%' \
#           IDENTIFIED BY '${MYSQL_PASS}' WITH GRANT OPTION; \
#           FLUSH PRIVILEGES; \
#           CREATE DATABASE ${DB_NAME};" | mysql --user=$MYSQL_USER \
#                                               --password=$MYSQL_PASS \
#                                               --host=0.0.0.0 \
#                                               --port=3306
# fi
