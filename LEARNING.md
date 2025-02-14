# Terraform学習ガイド

## Terraformとは
Terraformは、HashiCorpが開発したInfrastructure as Code (IaC)ツールです。
クラウド環境やオンプレミス環境のリソースをコードで定義し、自動的にプロビジョニング、変更、管理することができます。

## Google Cloud Platform (GCP) とは
Google Cloud Platform (GCP) は、Googleが提供するクラウドコンピューティングサービスです。
GCPを使用することで、KaggleノートブックからGoogle Cloudのリソースにアクセスし、データの転送や分析を行うことができます。

### GCPのサービスアカウントとロール
GCPでは、サービスアカウントを使用して、アプリケーションやVMインスタンスなどのリソースに権限を付与します。
サービスアカウントには、ロールを付与することで、特定のリソースへのアクセスを許可することができます。
このTerraformファイルでは、以下のロールをサービスアカウントに付与しています。
-   Storage管理者 (`roles/storage.admin`)
-   Storage オブジェクト閲覧者 (`roles/storage.objectViewer`)
-   Storage オブジェクト作成者 (`roles/storage.objectCreator`)

## Terraformのメリット
-   インフラのコード化による管理
-   変更の追跡とバージョン管理
-   自動化による効率化
-   複数環境の一貫性維持

## Terraformの基本概念
-   **リソース (Resource)**: 管理対象のインフラストラクチャコンポーネント（例：仮想マシン、ストレージバケット、ネットワーク）
-   **プロバイダー (Provider)**: 特定のインフラストラクチャプロバイダー（例：AWS、Google Cloud、Azure）とのインタフェース
-   **モジュール (Module)**: 複数のリソースをまとめた再利用可能な構成
-   **ステート (State)**: 管理対象のリソースの現在の状態を記録するファイル

## Terraformのワークフロー
1.  **初期化 (Init)**: Terraformの実行に必要なプラグインをダウンロード
    ```bash
    terraform init
    ```
2.  **計画 (Plan)**: 構成ファイルに基づいて、実行される変更をプレビュー
    ```bash
    terraform plan
    ```
3.  **適用 (Apply)**: 計画に基づいてリソースを作成、変更、または削除
    ```bash
    terraform apply
    ```
4.  **破棄 (Destroy)**: 管理対象のリソースをすべて削除
    ```bash
    terraform destroy
    ```

## Terraformの学習ポイント
-   Terraformの構文と構成ファイルの書き方
-   リソースとプロバイダーの定義方法
-   モジュールの作成と利用方法
-   ステートファイルの管理方法
-   Terraformのベストプラクティス
-   Google Cloud Platform (GCP) の基本的な知識
-   GCPのサービスアカウントとロールの概念

## 発展学習
-   Terraform Cloudの利用
-   Terraform Enterpriseの利用
-   CI/CDパイプラインとの統合
