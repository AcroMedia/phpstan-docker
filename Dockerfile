FROM ghcr.io/phpstan/phpstan
RUN composer global require phpstan/extension-installer \
    && composer global require jangregor/phpstan-prophecy mglaman/phpstan-drupal \
    && composer clear-cache

ENTRYPOINT ["phpstan"]