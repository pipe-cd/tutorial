# 1. シンプルなデプロイ

このページでは、シンプルな方法で、アプリケーションをデプロイしていきます。

## 1. 設定ファイルの準備

1-1. 設定ファイルを以下のように編集します。cloneしたリポジトリの`/src/deploy/`配下の1つのプラットフォームを使用してください。

> [!NOTE]
> 各プラットフォームのディレクトリは、デプロイの設定ファイル1枚(`app.pipecd.yaml`)と、プラットフォーム固有のファイルとで構成されています。

- **Kubernetes**向け:
  - [helloworld](https://github.com/pipe-cd/pipecd/pkgs/container/helloworld)サービスをデプロイしていきます。
  - `kubernetes/simple/`を使用してください。編集は不要です。
- **Google Cloud Run**向け:
  - [helloworld](https://github.com/pipe-cd/pipecd/pkgs/container/helloworld)サービスをデプロイしていきます。
  - `cloudrun/simple/`を使用してください。編集は不要です。
- **Amazon ECS**向け:
  - nginxのサービスをデプロイしていきます。
  - `ecs/simple/`の以下の箇所を編集してください。
    - `app.pipecd.yaml`: `targetGroupArn`
    - `servicedef.yaml`: `cluster`, `securityGroups`, `subnets`
    - `taskdef.yaml`: `executionRoleArn`.
- **AWS Lambda**向け:
  - あなたのイメージを利用して関数をデプロイしていきます。
  - `lambda/simple/`の以下の箇所を編集してください。
    - `function.yaml`: `role`, `image`
- **Terraform**向け:
  - ファイルをローカルに生成していきます。
  - `terraform/simple/`の以下の箇所を編集してください。
    - `main.tf`: `path`, `filename`

1-2. 変更をcommitして、リモートにpushしてください。


## 2. アプリケーションの登録

2-1. アプリケーション一覧ページにアクセスします。 [http://localhost:8080](http://localhost:8080)

2-2. `+ ADD`をクリックします。

2-3. 下記の値を入力し、`SAVE`->`SAVE`をクリックします
   - `Piped`: 構築したPiped
   - `Platform Provider`: プラットフォーム
   - `Application`: [1.](#1-prepare-config-files)で設定したアプリケーション

![add-application-input](/images/deploy/application-add-input.png)

2-4. 登録に成功した場合、下記画像のようなダイアログが表示されます。

![application-is-added](/images/deploy/application-is-added.png)


## 3. 最初のデプロイメントを眺める

3-1. デプロイメント一覧ページにアクセスします。 [http://localhost:8080/deployments](http://localhost:8080/deployments)

3-2. 新しいデプロイメントが自動で表示されるまで待ちます。表示されたら、クリックして詳細を見ます。

> [!NOTE]
> 自身でデプロイメントをキックする必要はありません。Pipedが自動的に開始してくれるからです。**これがGitOpsです。**

![deployment-before-appear](/images/deploy/deployment-before-appear.png)
![deployment-appear](/images/deploy/deployment-appear.png)


3-3. ステータスが`SUCCESS`または`FAILURE`になるまで待ちます。`FAILURE`が表示された場合、そのページでログを確認してください。

![deployment-deploying](/images/deploy/deployment-deploying.png)


3-4. ステータスが`SUCCESS`になったら、デプロイメントは正常に完了です。

![deployment-success](/images/deploy/deployment-success.png)

3-5. 自身のデプロイ先の環境(Kubernetesクラスターやクラウドのコンソール等)を確認し、デプロイ結果を確認します。
     


## 4. 設定を変更して、新しいデプロイメントを開始

4-1. デプロイした設定ファイルを編集します。(例: imageのtagやサイジングを変更)

4-2. 変更をcommitしてリモートにpushします。

4-3. デプロイメント一覧ページに再度アクセスします。[http://localhost:8080/deployments](http://localhost:8080/deployments)

4-4. しばらくすると、新しいデプロイメントが自動で開始されます。

---

[次: カスタムのパイプラインでデプロイ>](02-pipeline.md)

[< 戻る: Deploy](README.md)