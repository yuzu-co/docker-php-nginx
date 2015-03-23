FROM vixns/php-nginx:5.6-fpm-yzu
MAINTAINER Stéphane Cottin <stephane.cottin@vixns.com>

ENV PHLACON_VERSION 1.3.2

RUN git clone -b $PHLACON_VERSION git://github.com/phalcon/cphalcon.git /usr/src/cphalcon && cd /usr/src/cphalcon/build && ./install && echo "extension=phalcon.so" >> "/usr/local/etc/php/conf.d/ext-phalcon.ini" && rm -rf /usr/src/cphalcon