#!/bin/sh -l

/composer/vendor/bin/phpmd --version

COMPOSER_COMMAND="composer install --no-scripts --no-progress --ignore-platform-reqs"
echo "::group::$COMPOSER_COMMAND"
$COMPOSER_COMMAND
echo "::endgroup::"
/composer/vendor/bin/phpmd $*
