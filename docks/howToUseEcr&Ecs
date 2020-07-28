●ECRのプッシュ時注意点●
1、ログイン時の注意点
前提:AWS cliインストール済み、プロファイル設定済み
AWS CLI の profile を追加する
https://qiita.com/noid11/items/bdc2dc15213da43a10a7

https://qiita.com/noz_mikally/items/970b340caab59e8afb2e
ECRにdockerをプッシュする時に、credentialsのエラーが出たときの対処

aws ecr get-login-password --profile devAppUser | docker login --username AWS --password-stdin 154184720595.dkr.ecr.ap-northeast-1.amazonaws.com

devAppUser

２、dockerイメージ構築時の注意点
Dockerfileを指定する事。
docker build -f ./infra/prod/nginx/Dockerfile -t nginx-ecsite .