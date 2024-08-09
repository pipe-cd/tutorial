# 3. Pipedの構築

このページでは、シングルバイナリのPipedエージェントをローカルで実行していきます。

## インストール

1. PipedのIDをコンソールで払い出します。

   1-1. Piped設定画面にアクセスします。[http://localhost:8080/settings/piped](http://localhost:8080/settings/piped) 

   1-2. `+ ADD`をクリックします。
    ![ADD Piped](/images/install/piped-add-button.png)

   1-3. 任意の`Name`と`Description`を入力し、`SAVE`をクリックします。
    ![Input piped](/images/install/piped-add-input.png)

   1-4. PipedのIDとKeyが表示されます。 **これらは以降のステップで使用します。**
    ![Piped is registered](/images/install/piped-registered.png)

2. [1. Gitリポジトリのセットアップ](01-git.md)でcloneしたディレクトリに移動します。
   ```console
   cd <YOUR_CLONED_TUTORIAL_DIR>
   cd src/install/piped/
   ```

3. 下記の`<YOUR_PIPED_KEY>`を`1-4.`で取得した`Piped Key`の値に置き換え、そのKeyのファイルを作成します。[^1]

   ```console
   echo -n <YOUR_PIPED_KEY> > .pipedKey
   ```

4. ローカルの`src/install/piped/piped.yaml`を以下のように編集します。
   - `spec.pipedID`: `1-4.`で取得した`Piped Id`
   - `spec.pipedKeyFile`: `<YOUR_CLONED_TUTORIAL_DIR>/src/install/piped/.pipedKey`
   - `spec.repositories[0].remote`: [1. Gitリポジトリのセットアップ](01-git.md)で作成したGitHub上のプライベートリポジトリのURL
   - `spec.platformProviders`: デプロイ先となる環境の項目をコメントアウト解除します。

5. [pipecd/releases](https://github.com/pipe-cd/pipecd/releases/latest)からPipedの公式バイナリを取得します。OSとCPUは適宜選択してください。

   ```console
   # OS=darwin or linux
   # CPU=arm64 or amd64
   curl -Lo ./piped  https://github.com/pipe-cd/pipecd/releases/download/v0.48.0/piped_v0.48.0_${OS}_${CPU}
   ```

6. Pipedの実行権限を付与します。

   ```console
   chmod +x ./piped
   ```

7. Pipedを実行します。[^2]

   ```console
   ./piped piped --config-file=./piped.yaml --insecure
   ```

   <details>
   <summary>トラブルシューティング (クリックして拡げる)</summary>

   - `failed to create api client	{"error": "context deadline exceeded"}`
     - PipedがControl Planeへの接続に失敗したことを意味します。
     - `piped.yaml`内の`apiAddress`が正しいか確認してください。
     - Control Planeが`apiAddress`で指定したポートで稼働しているか確認してください。

   - `rpc error: code = Unauthenticated desc = Unauthenticated`
     - PipedがControl Planeへの接続に成功したものの、認証に失敗したことを意味します。
     - `piped.yaml`内の`projectID`, `pipedID`, `pipedKeyFile`が正しいか確認してください。
     - `pipedKeyFile`で指定したファイル内の値が正しいか確認してください。

   - `failed to clone from remote`
     - PipedがControl Planeへの接続・認証に成功したものの、GitHubからのcloneに失敗したことを意味します。
     - `piped.yaml`内の`spec.git.repositories`> `remote`, `branch`が正しいか確認してください。

   </details>


## 確認

1. Piped設定画面にアクセスします。 [http://localhost:8080/settings/piped](http://localhost:8080/settings/piped)

   Pipedの起動に成功していた場合、緑(`Online`)のマークが`Name`欄に表示されます。
   緑になっていない場合、1,2分ほど待機してください。
      ![Piped Status](/images/install/piped-status.png)

## 関連情報

- [Install Piped](https://pipecd.dev/docs/installation/install-piped/)
- [Managing Piped](https://pipecd.dev/docs/user-guide/managing-piped/)
- [Configuration Reference of Piped](https://pipecd.dev/docs/user-guide/managing-piped/configuration-reference/)

[^1]: PipedのKeyはクレデンシャルのため、公開しないでください。実運用では、Keyと `piped.yaml`はシークレット管理ツールで管理することが推奨されます。

[^2]: `--insecure`オプションによって、PipedからControl Planeへの通信のTLSを無効化しています。 (cf. [Piped's Runtime Options](https://pipecd.dev/docs/user-guide/managing-piped/runtime-options/))

---

[次: デプロイ >](../40-deploy/README.md)

[< 戻る: 2. Control Planeの構築](02-control-plane.md)