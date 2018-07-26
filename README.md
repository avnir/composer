# Composer container

This is a [Docker](http://www.docker.com) image for [Composer](https://getcomposer.org).

## Usage examples
- ```docker run --rm -v ${PWD}:/var/www:rw avnir/composer install```
- ```docker run --rm -v ${PWD}:/var/www:rw avnir/composer update```
- ```docker run --rm -v ${PWD}:/var/www:rw avnir/composer require library:1.2.3```


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Avni Rexhepi](https://github.com/avnir)


## License

Apache License


## Copyright

```
Copyright (c) 2016 Avni Rexhepi <http://www.avnirexhepi.com>
```