---
title: "Control Plane"
weight: 1
---


docker-composeを利用してPipeCDのControl Planeをローカルに構築する方法を紹介します。

下図の1番に相当します。
<img src="/images/30-local-run/architecture.png">

Control Planeは下図のように複数のコンポネントから成立しています。
以下では、各コンポネントをコンテナとして、docker-composeでまとめて構築していきます。
<img src="/images/control-plane-architecture.png">
各コンポネントの詳細については下記を参照してください。
- https://pipecd.dev/docs/user-guide/managing-controlplane/architecture-overview/

## 前提条件

- [Docker](https://docs.docker.com/engine/)をインストール済みであること
- [docker-compose](https://docs.docker.jp/compose/install.html)をインストール済みであること
- ghcr.ioからイメージをpullできる状態であること

## 構築手順

[docker-compose.yaml](./docker-compose.yaml)に対して、下記コマンドを実行します。
```sh
docker-compose up
```

コマンド実行後、下記のようなログが出力されます。
```log
pipecd-server-1   | successfully loaded control-plane configuration
pipecd-server-1   | successfully connected to file store
pipecd-server-1   | successfully connected to data store
pipecd-server-1   | grpc server will be run without tls
pipecd-server-1   | grpc server will be run without tls
pipecd-server-1   | grpc server is running on [::]:9080
pipecd-server-1   | grpc server is running on [::]:9083
pipecd-server-1   | grpc server will be run without tls
pipecd-server-1   | admin server is running on 9085
pipecd-server-1   | grpc server is running on [::]:9081
pipecd-server-1   | start running http server on :9082
```

## 動作確認

1. ブラウザで下記URLにアクセスします。

    - http://localhost:8080

2. 下記の画面が表示されます。下記の値を入力して`CONTINUE`します。
   - `Project Name`: `control-plane-local`

    <img src="/images/ui/login1.png">

3. 下記の画面が表示されます。下記の値を入力して`LOGIN`します。
   - `Username`: `hello-pipecd`
   - `Password`: `hello-pipecd`

    <img src="/images/ui/login2.png">

4. 下記の画面が表示されれば成功です。

    <img src="/images/ui/applications.png">


補足: 2,3の入力値は、[control-plane-config.yaml](./volume/pipecd-config/control-plane-config.yaml)の`spec.projects`で設定した値です。

## 削除方法

```sh
docker-compose down
```


## Appendix

### データを維持しつつControl Planeを再起動する方法

`docker-compose down`で全てのコンテナを終了させると、データストアのデータも消失するため、再起動後にpipedやapplicationの再登録が必要となります。

下記の方法により、pipedやapplicationのデータを保持したまま、Control Plane(のserverコンポネント)の再起動を行えます。
  - 例1）Control Planeのコードを修正して動作確認したい時
  - 例2）Conrol Planeをバージョンアップさせたい時

```sh
# pipecd-serverのみ再起動させる
docker-compose rm -fsv pipecd-server
docker-compose up pipecd-server
```

### 別versionのpipecdイメージを使用したい場合

[docker-compose.yaml](./docker-compose.yaml)の下記箇所を書き換えます。
- `service.pipecd-server.image`
- `service.pipecd-ops.image`

公式イメージのタグは下記を参照してください。
https://github.com/pipe-cd/pipecd/pkgs/container/pipecd