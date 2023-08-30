# Getting Started

```shell
# ビルド
docker build -t my_nginx_image .

# 起動
docker run -d -p 80:80 my_nginx_image

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
