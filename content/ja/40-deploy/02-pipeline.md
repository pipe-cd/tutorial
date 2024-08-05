# 2. カスタムのパイプラインでデプロイ

このページでは、Canaryリリースのようなカスタムのパイプラインでデプロイをしていきます。

_手順は[1. シンプルなデプロイ](01-simply.md)とほとんど同じです。 設定ファイルのみ(本質的には`app.pipecd.yaml`のみ)が異なります。_

## 1. 設定ファイルの準備

1-1. 設定ファイルを以下のように編集します。cloneしたリポジトリの`/src/deploy/`配下の1つのプラットフォームを使用してください。

- **Kubernetes**向け:
  - [helloworld](https://github.com/pipe-cd/pipecd/pkgs/container/helloworld)サービスをCanaryリリースしていきます。
  - `kubernetes/canary/`を使用してください。編集は不要です。
- **Google Cloud Run**向け:
  - [helloworld](https://github.com/pipe-cd/pipecd/pkgs/container/helloworld)サービスをCanaryリリースしていきます。
  - `cloudrun/canary/`を使用してください。編集は不要です。
- **Amazon ECS**向け:
  - nginxのサービスをCanaryリリースしていきます。
  - `ecs/canary/`を以下のように編集してください。
    - `app.pipecd.yaml`: primaryとcanaryの`targetGroupArn`を編集
    - `servicedef.yaml`: `/src/deploy/ecs/simple/servicedef.yaml`からコピーして、`serviceName`を変更
    - `taskdef.yaml`: `/src/deploy/ecs/simple/taskdef.yaml`からコピーして、`family`を変更
- **AWS Lambda**向け:
  - あなたのイメージを利用して関数をCanaryリリースしていきます。
  - `lambda/canary/`を以下のように編集してください。
    - `function.yaml`: `/src/deploy/lambda/simple/function.yaml`からコピーして、`name`を変更
- **Terraform**向け:
  - ファイルをローカルに生成していきます。plan->承認->applyのパイプラインを構築します。
  - `terraform/plan-approval-apply/`の下記の箇所を編集してください。
    - `main.tf`: `path`, `filename`

1-2. 変更をcommitして、リモートにpushします。


## 2. アプリケーションの登録

2-1. アプリケーション一覧ページにアクセスします。 [http://localhost:8080](http://localhost:8080)

2-2. Click `+ ADD`.

2-3. 下記の値を入力し、`SAVE`->`SAVE`をクリックします
   - `Piped`: 構築したPiped
   - `Platform Provider`: プラットフォーム
   - `Application`: [1.](#1-prepare-config-files)で設定したアプリケーション


## 3. Watch the first deployment

> [!NOTE]
> **Terraform**のデプロイをしている場合、[4-3.](#4-edit-the-config-and-watch-the-customized-deployment)までスキップしてください。
> それ以外のプラットフォームについては、以下の手順に従って、**2度**デプロイを行います。（最初のデプロイでは、カスタムのパイプラインが使用されないため）

3-1. デプロイメント一覧ページにアクセスします。 [http://localhost:8080/deployments](http://localhost:8080/deployments)

3-2. 新しいデプロイメントが自動で表示され、完了するまで待ちます。

## 4. 設定を編集し、カスタムのパイプラインでデプロイします

4-1. デプロイした設定ファイルを編集します。(例: imageのtagやサイジングを変更)

4-2. 変更をcommitしてリモートにpushします。

4-3. デプロイメント一覧ページに再度アクセスします。[http://localhost:8080/deployments](http://localhost:8080/deployments)

4-4. しばらくすると、カスタムのパイプラインを用いたデプロイメントが自動で開始されます。

![deployment-pipeline](/images/deploy/deployment-pipeline.png)
<p align="center">ECSの場合の、Canaryリリースのパイプライン</p>

## 関連情報

- [Configuration examples](https://github.com/pipe-cd/examples)
- [Customizing deployment](https://pipecd.dev/docs/user-guide/managing-application/customizing-deployment/)
- [Configuration Reference > Stage options](https://pipecd.dev/docs/user-guide/configuration-reference/#stageoptions)

---

[次: 次のステップ](../90-nextstep/README.md)

[< 戻る: 1. Deploy Simply](01-simply.md)
