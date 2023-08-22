# Getting Started

```shell
# ビルド
docker build -t my_nginx_image .

# 起動
docker run -d -p 80:80 my_nginx_image

# ログイン
CONTAINER_ID=$(docker ps | grep my_nginx_image | awk '{print $1}')
docker exec -it $CONTAINER_ID /bin/bash
```
