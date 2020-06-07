laravelでの開発環境用のリポジトリです。

■構成
サーバー：nginx
アプリケーションフレームワーク：laravel
データベース：mysql

■使い方
①git cloneしリポジトリをローカルにクローンする

②「/sh」に移動し、以下のコマンドを実行する
$sh setup.sh

③「/」に移動し、以下のコマンドを実行する
$docker-compose up -d

④以下のメッセージが出力されたことを確認する
.......
Creating laravel ... done
Creating nginx   ... done
Creating mysql   ... done
Creating phpmyadmin ... done

⑤以下のurlに接続し、それぞれ画面が正しく表示されることを確認する。
laravel:http://localhost
phpmyadmin:http://localhost:1234

⑥migrationを実行する
・以下のコマンドを順番に実行する
$docker exec -i -t laravel bash
$php artisan migrate
$exit

⑦migrationの結果、テーブルが作成されていることを確認する
http://localhost:1234
dev_databaseを確認し、migrationファイルの内容と同じテーブルが作成されているのを確認

