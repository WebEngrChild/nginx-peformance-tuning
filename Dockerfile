# ベースとなるイメージを指定
FROM nginx:1.24.0

# ホストマシンのnginx設定ファイルをコンテナにコピー（オプション）
# COPY ./my_nginx.conf /etc/nginx/conf.d/default.conf

# コンテナの80番ポートを開放
EXPOSE 80

# nginxをフォアグラウンドで実行
CMD ["nginx", "-g", "daemon off;"]
