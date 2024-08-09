# 仕組み概説

このページでは、PipeCDの基本的な仕組みについて学びます。

## アーキテクチャ概観

PipeCDは **Control Plane** と **Piped (Agent)** の2つのコンポネントからなります。

![architecture-overview](/images/overview/architecture-role.svg)
<p align="center">アーキテクチャ概観</p>

**1. Control Plane**
   - ステートの保管 (例: デプロイメントのステータス、ログ)
   - コンソールのUIを提供

**2. Piped (Agent)**
   - デプロイメントの計画・実行
   - 定期的にステートをControl Planeに送信
   - ステートレスなシングルバイナリなので、起動・管理が容易

### FAQ: PipeCDにはなぜControl PlaneとAgentとがあるのか？

**A. 組織内でスケーラブルかつセキュアに利用できるようにするため**

- もしAgentが全てを担っていたらどうなるか？

  -> 各チームがステート用のストレージを管理する必要がありますが、それは難しく、またスケーラビリティを損ねます。

- もしControl Planeが全てを担っていたらどうなるか？

  -> Control Planeが各チームの環境に強い権限でアクセスする必要がありますが、それはセキュアではないです。

![scalability in a organization](/images/overview/architecture-organization.svg)
<p align="center">組織内でのスケーラビリティ</p>

## 関連情報

- [Docs > Overview](https://pipecd.dev/docs/overview/)
- [Docs > Concepts](https://pipecd.dev/docs/concepts/)

---

[次: 前提条件 >](../20-prerequisites/README.md)

[< 戻る: 日本語版トップ](../README.md)