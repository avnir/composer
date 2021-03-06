FROM avnir/php-fpm:php7.3
LABEL maintainer="Avni Rexhepi <arexhepi@gmail.com>"


RUN apt-get update && \
    apt-get install -y --no-install-recommends \
            git && \
    apt-get -y autoremove && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


RUN php -r "readfile('http://getcomposer.org/installer');" | php && \
    mv composer.phar /usr/local/bin/composer && \
    composer self-update


COPY start-container /usr/local/bin/start-container
RUN chmod +x /usr/local/bin/start-container


RUN echo "export PATH=~/.composer/vendor/bin/:$PATH" && \ 
    echo "export COMPOSER_HOME=/var/www/"


ENTRYPOINT ["start-container","composer"]
CMD ["--help"]