# ベースとなるイメージを指定
FROM nginx:1.24.0

COPY ./nginx.conf /etc/nginx/nginx.conf

# コンテナの80番ポートを開放
EXPOSE 80

# nginxをフォアグラウンドで実行
CMD ["nginx", "-g", "daemon off;"]
