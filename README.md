# PHP 8.x for development
### Docker containers for testing PHP libraries

This container runs three different images, one for each PHP version: PHP 8.0, PHP 8.1 and PHP 8.2

## Current feature

Each image supports:
- xdebug
- composer
- bash

No database support provided

## How to use it
Clone this project in a folder.

Run ``` docker-compose up -d ``` to create three containers, one for each PHP version.

Any folder in the project parent folder is mapped into ``` /var/www/html/<your project> ```

Run ``` docker exec -it php-dev-v80-1 bash ``` for PHP 8.0

Run ``` docker exec -it php-dev-v81-1 bash ``` for PHP 8.1

Run ``` docker exec -it php-dev-v82-1 bash ``` for PHP 8.2

In any of the container you can run composer and test your code.

You can use for example:
- PHPUnit (https://github.com/sebastianbergmann/phpunit)
- PHPStan (https://github.com/phpstan/phpstan)
- PSalm (https://github.com/vimeo/psalm)
- PHP CS Fixer (https://github.com/PHP-CS-Fixer/PHP-CS-Fixer)