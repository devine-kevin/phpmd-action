#!/bin/sh -l

echo "::group::Is PHPMD installed"
/composer/vendor/bin/phpmd --version
echo "::endgroup::"

echo "::group::Running PHPMD..."
echo "/composer/vendor/bin/phpmd" $*
/composer/vendor/bin/phpmd $*
echo "::endgroup::"
