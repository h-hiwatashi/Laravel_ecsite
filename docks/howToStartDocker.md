Docker起動時
docker-compose -f docker-compose.dev.yml up -d
docker-compose -f docker-compose.prod.yml up -d

全Dockerコンテナ停止
sudo docker kill $(sudo docker ps -a -q)

コンテナの停止、ネットワーク・名前付きボリューム・コンテナイメージを削除
docker-compose down --volumes --rmi all