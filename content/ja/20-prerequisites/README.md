# 前提条件

このチュートリアルを実施するにあたって、事前に下記が必要となります。

- [docker-compose](https://docs.docker.com/compose/install/): `docker-compose up`を実行できること
- `git`: `git clone`と`git push`をあなたのGitHubリポジトリに対して実行できること
- 下記の中から一つ。どこにデプロイするかによって
- At least one of the following. It depends on where you deploy.
  - **Kubernetes**向け:
    - Kubernetesのクラスターを持っていること。
    - そのクラスターに対して、kubectlで接続できること。
  - **Google Cloud Run**向け:
    - ローカルからあなたのGoogle Cloudプロジェクトに対して、Cloud Runの各種APIを実行できること。
  - **Amazon ECS**向け:
    - ローカルからあなたのAWSアカウントに対して、ECSとELBの各種APIを実行できること。詳細は[こちら](https://pipecd.dev/docs/installation/install-piped/required-permissions/#for-ecsapp)。
    - 下記のすべて。（一般的なECSサービスを作成する際に必要なものと同じです）
      - ECSのクラスター
      - ELB（ECSサービスはこのELBからトラフィックを受け取ります）
      - 2つのターゲットグループ（ELBはこれらを用いてECSサービスにトラフィックを流します）
        - うち一つのターゲットグループは、ELBのリスナールールに紐づけておくこと
      - 2つのサブネット（ECSサービスが配置されます）
      - `HTTP:80`でローカルからのインバウンド通信を許可するセキュリティグループ
      - [`AmazonECSTaskExecutionRolePolicy`](https://docs.aws.amazon.com/ja_jp/aws-managed-policy/latest/reference/AmazonECSTaskExecutionRolePolicy.html)をもつタスク実行ロール。詳細は[こちら](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_execution_IAM_role.html)。
  - **AWS Lambda**向け:
    - ローカルからあなたのAWSアカウントに対して、Lambdaの各種APIを実行できること。詳細は[こちら](https://pipecd.dev/docs/installation/install-piped/required-permissions/#for-lambdaapp)。
    - 下記のすべて。（一般的なLambda関数を作る際に必要なものと同じです）
      - ECRリポジトリにイメージがあること
      - 関数の実行ロール
  - **Terraform**向け:
    - [`terraform` commands](https://developer.hashicorp.com/terraform/cli/commands)をローカルから実行できること。

---

[次: インストール >](../30-install/README.md)

[< 戻る: 仕組み概観](../10-overview/README.md)