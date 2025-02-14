#!/usr/bin/env bash
echo "Running composer"
composer global require hirak/prestissimo
composer update
composer install --no-dev

echo "Caching config..."
php artisan config:cache


echo "Caching routes..."
php artisan route:cache

echo "Running migrations..."
php artisan migrate --force

echo "Passport install..."
php artisan passport:install