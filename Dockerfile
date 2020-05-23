# Container image that runs your code
FROM php:7.4-alpine

RUN apk add git

COPY --from=composer /usr/bin/composer /usr/bin/composer
RUN mkdir /composer
ENV COMPOSER_HOME=/composer
RUN echo "memory_limit=-1" > $PHP_INI_DIR/conf.d/memory-limit.ini

RUN composer global require --no-suggest --no-scripts "phpmd/phpmd"

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
