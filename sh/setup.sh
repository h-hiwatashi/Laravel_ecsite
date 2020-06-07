############################################################################################
# setup.sh
############################################################################################
cd ../app/
# envファイルの作成
cp -f .env.example .env
# composer install
composer install
# key generate
php artisan key:generate
