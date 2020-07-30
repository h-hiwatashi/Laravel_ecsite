Dockerコンテナ作成時にcomposer installを効率よくcacheする
https://blog.hanhans.net/2017/02/25/docker-cache-composer-install/

エラー対応20200730
画面に500が出て画面が表示されない
１ ./src/storageのパーミッションが777になっていない。
chmod -R 777 ./storage
２ ローカルではphp.ini の display_errors を On にする
https://utano.jp/entry/2017/10/nginx-php-fpm-500-error/
３ .envファイルが存在していない。
https://mebee.info/2020/04/28/post-9674/

masterにpushしたら
コンテナにログイン

chmod -R 777 ./storage
cp -a .env.production .env
