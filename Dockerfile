FROM ghcr.io/phpstan/phpstan
RUN composer global require phpstan/extension-installer \
    && composer global require jangregor/phpstan-prophecy mglaman/phpstan-drupal \
    && composer clear-cache

ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

RUN chmod +x /usr/local/bin/install-php-extensions && sync && \
    install-php-extensions gd bcmath

ENTRYPOINT ["phpstan"]