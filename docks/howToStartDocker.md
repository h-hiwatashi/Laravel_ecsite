Docker起動時
docker-compose -f docker-compose.dev.yml up -d
docker-compose -f docker-compose.prod.yml up -d

イメージの重複を避ける
docker-compose -f docker-compose.prod.yml up --build

コンテナの中に入る
docker exec -it コンテナ名またはコンテナID bash

全Dockerコンテナ停止
sudo docker kill $(sudo docker ps -a -q)

コンテナの停止、ネットワーク・名前付きボリューム・コンテナイメージを削除
docker-compose -f docker-compose.prod.yml down --volumes --rmi all

Laravelのエラー：
Fatal error: require(): Failed opening required '/project/vendor/autoload.php' (include_path='.:') in /project/artisan on line *
composerのがインストールされていないため↓
https://qiita.com/chimayu/items/82d9d457a056829b3b2e