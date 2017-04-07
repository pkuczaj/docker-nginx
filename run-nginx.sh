#!/usr/bin/env bash

set -e

echo "127.0.0.1 oluaws.cxtysvkkvvpr.us-east-1.rds.amazonaws.com" >> /etc/hosts

/usr/sbin/php-fpm

nginx -g "daemon off;"
