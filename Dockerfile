FROM centos:7
MAINTAINER "Peter Kuczaj" <peter@crocusplains.com>

ADD run-nginx.sh /run-nginx.sh

RUN yum update -y \
 && yum install -y \
        wget \
 && wget -q \
        http://rpms.remirepo.net/enterprise/remi-release-7.rpm \
        https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm \
 && yum install -y \
        epel-release \
 && yum install -y \
        nginx \
        php-fpm \
        php-mbstring \
        php-mysqlnd \
        php-gd \
        php-pear \
        php-pecl-zip \
        mysql \
        drush \
 && yum clean all \
 && echo "cgi.fix_pathinfo=0" >> /etc/php.ini \
 && systemctl enable php-fpm

EXPOSE 80 443

CMD [ "/run-nginx.sh" ]
