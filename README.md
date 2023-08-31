# Set Up Container

```shell
# ビルド
docker build -t my_nginx_image .

# 起動
docker run -d -p 80:80 my_nginx_image

# 再起動
CONTAINER_ID=$(docker ps | grep my_nginx_image | awk '{print $1}')
docker restart $CONTAINER_ID

# ログイン
CONTAINER_ID=$(docker ps | grep my_nginx_image | awk '{print $1}')
docker exec -it $CONTAINER_ID /bin/bash

# メトリクス取得
CONTAINER_ID=$(docker ps | grep my_nginx_image | awk '{print $1}')
docker stats $CONTAINER_ID

# 停止・削除
CONTAINER_ID=$(docker ps | grep my_nginx_image | awk '{print $1}')
docker stop $CONTAINER_ID
docker rm $CONTAINER_ID

# イメージ削除
CONTAINER_ID=$(docker ps | grep my_nginx_image | awk '{print $1}')
docker rmi my_nginx_image
```
# Load Testing

## Step1

```nginx configuration
# 不適切な設定
worker_rlimit_nofile 1000;

events {
    worker_connections  1024;
}
```

```shell
ab -n 10000 -c 100 http://localhost/
```

## Step2

```shell
# 最大ファイルディスクリプタ数確認
ulimit -n
```

```nginx configuration
# 同時接続を許可
worker_rlimit_nofile 1048576;

events {
    worker_connections  786432;
}
```

```shell
ab -n 10000 -c 100 http://localhost/
```