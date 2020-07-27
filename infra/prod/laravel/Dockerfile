# baseイメージ
FROM php:7.2-fpm
# ローカルのphp設定ファイルをコンテナ内に配置
COPY ./infra/prod/laravel/php.ini /usr/local/etc/php/

# 必要な物インストール
RUN apt-get update && apt-get install -y && \
    apt-get install -y zlib1g-dev mariadb-client && \
    docker-php-ext-install zip pdo_mysql

# Composerインストール
COPY --from=composer /usr/bin/composer /usr/bin/composer

#リソースコピー
RUN mkdir /var/www/app
COPY ./src /var/www/app

# Node.jsインストール
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && \ 
    apt-get update && \
    apt-get install -y nodejs

# Composerの設定
ENV COMPOSER_HOME /composer

# phpの設定
ENV PATH $PATH:/composer/vendor/bin