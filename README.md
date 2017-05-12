# Composer container

This is a [Docker](http://www.docker.com) image for [Composer](https://getcomposer.org).

# Versions
- [latest](https://github.com/avnir/composer/tree/master) available as avnir/composer:latest at [Docker Hub](https://hub.docker.com/r/avnir/composer/)
- [php5](https://github.com/avnir/composer/tree/php5.1) available as avnir/composer:php5 at [Docker Hub](https://hub.docker.com/r/avnir/composer/)

A few examples how to run these containers
- ```docker run --rm -v ${PWD}:/var/www:rw avnir/composer install```
- ```docker run --rm -v ${PWD}:/var/www:rw avnir/composer update```
- ```docker run --rm -v ${PWD}:/var/www:rw avnir/composer require library:1.2.3```

Feedback or improvements are welcome.