#!/usr/bin/env bash

set -e

if [ -f "/etc/nginx/conf.d/hosts" ]
then
  cat /etc/nginx/conf.d/hosts >> /etc/hosts
fi

/usr/sbin/php-fpm

nginx -g "daemon off;"
