# 1. Gitリポジトリのセットアップ

このページでは、PipeCDのインストールの前に、このチュートリアル用のリポジトリをローカルとGitHubにコピーしていきます。
このリポジトリには、インストールとデプロイのための設定が含まれています。

> [!NOTE]
> ここでは`Fork`を使わないでください。あなたの設定ファイルをパブリックに公開しないようにするためです。

![setup-git-repository](/images/install/setup-git-repo.svg)
<p align="center">Gitリポジトリのセットアップの流れ</p>


1. あなたのGitHubアカウントに、空の**プライベート**リポジトリを新規作成します。リポジトリ名は任意です。
2. このリポジトリをローカルにcloneします。
    ```console
    git clone https://github.com/pipe-cd/tutorial.git
    ```

3. cloneしたリポジトリを、1.で作成したリポジトリにpushします。
    ```console
    git remote add private <YOUR_PRIVATE_REPOSITORY_URL>
    git push -u private main
    ```


---

[次: 2. Control Planeの構築 >](02-control-plane.md)

[< 戻る: インストール トップ](README.md)
