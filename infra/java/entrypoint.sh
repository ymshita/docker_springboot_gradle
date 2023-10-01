#!/bin/sh

# クラスファイルのコンパイルを継続的に実行
./gradlew -t classes &

# 上記のコマンドがバックグラウンドで実行されている間に、Spring Boot アプリケーションを実行
./gradlew bootRun