#!/usr/bin/env bash

set -e

if [ -f "/etc/nginx/conf.d/hosts" ]
then
  cat /etc/nginx/conf.d/hosts >> /etc/hosts
fi

/usr/sbin/postfix start

/usr/sbin/php-fpm -D

nginx -g "daemon off;"
