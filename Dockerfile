FROM avnir/php-fpm:latest
MAINTAINER Avni Rexhepi <arexhepi@gmail.com>


RUN apt-get update && \
    apt-get install -y --no-install-recommends \
            git && \
    apt-get -y autoremove && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


RUN php -r "readfile('http://getcomposer.org/installer');" | php && \
    mv composer.phar /usr/local/bin/composer && \
    composer self-update


USER www-data


RUN echo "export PATH=~/.composer/vendor/bin/:$PATH" && \ 
    echo "export COMPOSER_HOME=/var/www/"


# We need to create an empty file, otherwise the volume will belong to root.
RUN mkdir -p /var/www/ && \
    touch /var/www/placeholder && \
    chown -R www-data:www-data /var/www


ENTRYPOINT ["composer"]