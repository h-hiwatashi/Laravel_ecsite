FROM nginx:1.17-alpine

COPY ./infra/prod/nginx/conf/default.conf /etc/nginx/conf.d/default.conf
COPY ./src/public /var/www/app/public