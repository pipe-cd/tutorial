# 2. Control Planeの構築

このページでは、`docker-compose`を用いて、Control Planeをローカルに構築していきます。

## インストール

1. 下記のコマンドを、ローカルの`src/install/control-plane/docker-compose.yaml`に対して実行します。
    ```sh
    docker-compose up
    ```

    コマンド実行後、下記のようなログが表示されます。
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

## Confirmation

1. [http://localhost:8080](http://localhost:8080) でコンソールにアクセスします。
2.　下記の値を入力して、`CONTINUE`をクリックします。
   - `Project Name`: `tutorial`

    ![signin-project](/images/install/signin-project.png)

3. 下記の値を入力して、`LOGIN`をクリックします。
   - `Username`: `hello-pipecd`
   - `Password`: `hello-pipecd`

    ![signin-user](/images/install/signin-user.png)

4. 成功した場合、下記の画面が表示されます。

    ![applications-page](/images/install/applications.png)


## 関連情報

- [Architecture Overview](https://pipecd.dev/docs/user-guide/managing-controlplane/architecture-overview/)
- [Managing Control Plane](https://pipecd.dev/docs/user-guide/managing-controlplane/)
- [Installing Control Plane on Kubernetes](https://pipecd.dev/docs/installation/install-control-plane/installing-controlplane-on-k8s/)

---

[次: 3. Pipedのインストール >](03-piped.md)

[< 戻る: 1. Gitリポジトリのセットアップ](01-git.md)