FROM avnir/php-fpm:php7.2
MAINTAINER Avni Rexhepi <arexhepi@gmail.com>


RUN php -r "readfile('http://getcomposer.org/installer');" | php && \
    mv composer.phar /usr/local/bin/composer && \
    composer self-update


ADD start.sh /
RUN chmod +x /start.sh


RUN echo "export PATH=~/.composer/vendor/bin/:$PATH" && \ 
    echo "export COMPOSER_HOME=/var/www/"


ENTRYPOINT ["/start.sh","composer"]
CMD ["--help"]