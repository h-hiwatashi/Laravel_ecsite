Docker起動時
docker-compose -f docker-compose.dev.yml up -d

全Dockerコンテナ停止
sudo docker kill $(sudo docker ps -a -q)