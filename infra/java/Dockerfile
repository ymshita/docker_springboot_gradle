# ベースイメージの指定
FROM openjdk:17-jdk-bullseye

# アプリケーションのディレクトリを作成
WORKDIR /app

# アプリケーションのソースコードとエントリポイントスクリプトをコピー
COPY . /app

# 実行権限をエントリーポイントスクリプトに付与
RUN chmod +x /app/entrypoint.sh

# エントリーポイントを設定
ENTRYPOINT ["/app/entrypoint.sh"]