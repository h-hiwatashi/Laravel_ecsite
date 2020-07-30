# baseイメージ
FROM php:7.2-fpm
# ローカルのphp設定ファイルをコンテナ内に配置
COPY ./infra/prod/laravel/php.ini /usr/local/etc/php/

# 必要な物インストール
RUN apt-get update && apt-get install -y && \
    apt-get install -y zlib1g-dev mariadb-client && \
    apt-get update && apt-get -y install vim && \
    docker-php-ext-install zip pdo_mysql

# Composerインストール
COPY --from=composer /usr/bin/composer /usr/bin/composer
COPY ./src/composer.json /tmp/composer.json
COPY ./src/composer.lock /tmp/composer.lock
ENV COMPOSER_ALLOW_SUPERUSER 1
RUN composer install --no-scripts --no-autoloader -d /tmp

#リソースコピー
RUN mkdir /var/www/app
COPY ./src /var/www/app

#autoload.phpを生成
RUN mv -n /tmp/vendor /var/www/app/ && \
    cd /var/www/app/ && \
    composer dump-autoload

# Node.jsインストール
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && \ 
    apt-get update && \
    apt-get install -y nodejs

# Composerの設定
ENV COMPOSER_HOME /composer

# phpの設定
ENV PATH $PATH:/composer/vendor/bin
