FROM avnir/php5-fpm:latest
MAINTAINER Avni Rexhepi <arexhepi@gmail.com>


RUN apt-get update && apt-get install -y \
            git \
            php5.6-readline \
            --no-install-recommends && \
    apt-get -y autoremove && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


RUN php -r "readfile('https://getcomposer.org/installer');" | php && \
    mv composer.phar /usr/local/bin/composer && \
    composer self-update


RUN usermod -u 500 www-data && groupmod -g 500 www-data


RUN echo "export PATH=~/.composer/vendor/bin/:$PATH" && \ 
    echo "export COMPOSER_HOME=/var/www/"

# We need to create an empty file, otherwise the volume will belong to root.
RUN mkdir -p /var/www/ && touch /var/www/placeholder && chown -R www-data:www-data /var/www


ENTRYPOINT ["composer"]