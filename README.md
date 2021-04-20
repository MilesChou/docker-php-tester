# Docker image for PHP tester

[![GitHub Release][ico-release]][link-github-release]
[![License][ico-license]](LICENSE)

![Testing](https://github.com/MilesChou/docker-php-tester/workflows/Testing/badge.svg)
![Publish Docker](https://github.com/MilesChou/docker-php-tester/workflows/Publish%20Docker/badge.svg)

Docker image and GitHub Actions for test PHP env. Base on Docker official [PHP](https://hub.docker.com/_/php) image, [Composer](https://hub.docker.com/_/composer) V2.

[ico-release]: https://img.shields.io/github/tag/MilesChou/docker-php-tester.svg
[ico-license]: https://img.shields.io/badge/license-MIT-brightgreen.svg
[link-github-release]: https://github.com/MilesChou/docker-php-tester/releases

## Usage on GitHub Container Registry

See [GitHub Container Registry](https://github.com/users/MilesChou/packages/container/package/php-tester). Use the following command to pull image:

```bash
docker pull ghcr.io/mileschou/php-tester
```

## Supported tags and respective `Dockerfile` links

### PHP CLI

* [`latest`, `8.0`, `cli`, `8.0-cli` (8.0/Dockerfile)](https://github.com/MilesChou/docker-php-tester/blob/master/8.0/Dockerfile)
* [`7.4`, `7.4-cli` (7.4/Dockerfile)](https://github.com/MilesChou/docker-php-tester/blob/master/7.4/Dockerfile)
* [`7.3`, `7.3-cli` (7.3/Dockerfile)](https://github.com/MilesChou/docker-php-tester/blob/master/7.3/Dockerfile)
* [`7.2`, `7.2-cli` (7.2/Dockerfile)](https://github.com/MilesChou/docker-php-tester/blob/master/7.2/Dockerfile)
* [`7.1`, `7.1-cli` (7.1/Dockerfile)](https://github.com/MilesChou/docker-php-tester/blob/master/7.1/Dockerfile)
* [`7.0`, `7.0-cli` (7.0/Dockerfile)](https://github.com/MilesChou/docker-php-tester/blob/master/7.0/Dockerfile)
* [`5.6`, `5.6-cli` (5.6/Dockerfile)](https://github.com/MilesChou/docker-php-tester/blob/master/5.6/Dockerfile)
* [`5.5`, `5.5-cli` (5.5/Dockerfile)](https://github.com/MilesChou/docker-php-tester/blob/master/5.5/Dockerfile)

### Alpine

* [`alpine`, `8.0-alpine` (8.0/alpine/Dockerfile)](https://github.com/MilesChou/docker-php-tester/blob/master/8.0/alpine/Dockerfile)
* [`7.4-alpine` (7.4/alpine/Dockerfile)](https://github.com/MilesChou/docker-php-tester/blob/master/7.4/alpine/Dockerfile)
* [`7.3-alpine` (7.3/alpine/Dockerfile)](https://github.com/MilesChou/docker-php-tester/blob/master/7.3/alpine/Dockerfile)
* [`7.2-alpine` (7.2/alpine/Dockerfile)](https://github.com/MilesChou/docker-php-tester/blob/master/7.2/alpine/Dockerfile)
* [`7.1-alpine` (7.1/alpine/Dockerfile)](https://github.com/MilesChou/docker-php-tester/blob/master/7.1/alpine/Dockerfile)
* [`7.0-alpine` (7.0/alpine/Dockerfile)](https://github.com/MilesChou/docker-php-tester/blob/master/7.0/alpine/Dockerfile)
* [`5.6-alpine` (5.6/alpine/Dockerfile)](https://github.com/MilesChou/docker-php-tester/blob/master/5.6/alpine/Dockerfile)
* [`5.5-alpine` (5.5/alpine/Dockerfile)](https://github.com/MilesChou/docker-php-tester/blob/master/5.5/alpine/Dockerfile)

### Apache

* [`apache`, `8.0-apache` (8.0/apache/Dockerfile)](https://github.com/MilesChou/docker-php-tester/blob/master/8.0/apache/Dockerfile)
* [`7.4-apache` (7.4/apache/Dockerfile)](https://github.com/MilesChou/docker-php-tester/blob/master/7.4/apache/Dockerfile)
* [`7.3-apache` (7.3/apache/Dockerfile)](https://github.com/MilesChou/docker-php-tester/blob/master/7.3/apache/Dockerfile)
* [`7.2-apache` (7.2/apache/Dockerfile)](https://github.com/MilesChou/docker-php-tester/blob/master/7.2/apache/Dockerfile)
* [`7.1-apache` (7.1/apache/Dockerfile)](https://github.com/MilesChou/docker-php-tester/blob/master/7.1/apache/Dockerfile)
* [`7.0-apache` (7.0/apache/Dockerfile)](https://github.com/MilesChou/docker-php-tester/blob/master/7.0/apache/Dockerfile)
* [`5.6-apache` (5.6/apache/Dockerfile)](https://github.com/MilesChou/docker-php-tester/blob/master/5.6/apache/Dockerfile)
* [`5.5-apache` (5.5/apache/Dockerfile)](https://github.com/MilesChou/docker-php-tester/blob/master/5.5/apache/Dockerfile)

## Extensions

* bcmath
* exif
* gd
* gmp
* mcrypt (not supported in PHP 7.2+)
* memcached (using 2.2.0 in PHP 5.x)
    + [2.2.0](https://pecl.php.net/package/memcached/2.2.0) in PHP 5.x
* mongodb (using on PHP 7.x and PHP 8.x)
* pdo_mysql
* [redis](https://pecl.php.net/package/redis)
    + 5.0+ in PHP 7.x
    + [4.3.0](https://pecl.php.net/package/redis/4.3.0) in PHP 5.x
* soap
* sockets
* [swoole](https://pecl.php.net/package/swoole)
    + 4+ in PHP 7.2+
    + [2.2.0](https://pecl.php.net/package/swoole/2.2.0) in PHP 7.0 / PHP 7.1
    + [1.10.5](https://pecl.php.net/package/swoole/1.10.5) in PHP 5.x
* zip

## Credits

* [MilesChou](https://github.com/MilesChou)

## License

The MIT License (MIT). Please see [License File](LICENSE) for more information.
