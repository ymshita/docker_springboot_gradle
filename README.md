# docker_springboot_gradle

## 環境構築

- `.env.example` から .env ファイルを作成し設定

- .env ファイルの内容を設定

- `infra/java/entrypoint.sh` を `../${APP}` にコピー

```bash
cp infra/java/entrypoint.sh ../xxxx
```

- コンテナを実行(`--build`指定は初回のみ)

```bash
docker-compose up -d --build
```

- ビルド状況を確認

```bash
docker logs xxxx_app
```

- ブラウザで動作確認

- [localhost](http://localhost)

## コマンド

### docker操作

```bash
docker exec -it naus_app bash
docker container prune
docker ps -aq | xargs docker rm -f
docker image prune
docker images -aq | xargs docker rmi -f
docker volume prune
docker system prune
```

### docker-compose

```bash
docker-compose up -d
docker-compose config
docker-compose build --no-cache
```

### テスト

```bash
docker-compose exec app ./gradlew test
```
