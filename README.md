<div align="center">

# Kaggle用Google Cloud Terraformファイル

</div>

<div align="center">

[![Terraform](https://img.shields.io/badge/Terraform-v1.0+-blue.svg)](https://www.terraform.io/)
[![Google Cloud](https://img.shields.io/badge/Google%20Cloud-brightgreen.svg)](https://cloud.google.com/)
[![GitHub](https://img.shields.io/badge/GitHub-Repository-orange)](https://github.com/your-username/your-repo)

</div>

## 概要
このリポジトリには、KaggleノートブックからGoogle Cloud SDKを使用するためのTerraformファイルが含まれています。

## ファイル構成
- [main.tf](main.tf): Google Cloudリソースを定義するTerraformファイル
- [variables.tf](variables.tf): 変数定義ファイル
- [LEARNING.md](LEARNING.md): Terraform学習ガイド

## 使い方
1.  Google Cloud SDKをインストールし、初期設定を行います。
2.  必要なAPIを有効化します。
3.  このリポジトリをクローンします。
4.  `terraform.tfvars`ファイルを作成し、変数を設定します。
    ```
    project_name      = "your-project-name"
    project_id        = "your-project-id"
    org_id            = "your-org-id" # 組織を使用していない場合は不要
    billing_account   = "your-billing-account"
    region            = "your-region"
    service_account_id = "your-service-account-id"
    bucket_name       = "your-bucket-name"
    ```
5.  Terraformの初期化、計画、適用を実行します。
    ```bash
    terraform init
    terraform plan
    terraform apply
    ```

## Google Cloud Platform (GCP) について
-   Google Cloud Platform (GCP) は、Googleが提供するクラウドコンピューティングサービスです。
-   GCPを使用することで、KaggleノートブックからGoogle Cloudのリソースにアクセスし、データの転送や分析を行うことができます。
-   GCPの利用には、Googleアカウントと課金アカウントが必要です。

### GCPのサービスアカウントとロール
GCPでは、サービスアカウントを使用して、アプリケーションやVMインスタンスなどのリソースに権限を付与します。
サービスアカウントには、ロールを付与することで、特定のリソースへのアクセスを許可することができます。
このTerraformファイルでは、以下のロールをサービスアカウントに付与しています。
-   Storage管理者 (`roles/storage.admin`)
-   Storage オブジェクト閲覧者 (`roles/storage.objectViewer`)
-   Storage オブジェクト作成者 (`roles/storage.objectCreator`)

## 注意点
-   `project_id`は一意である必要があります。
-   `billing_account`は有効な課金アカウントである必要があります。
-   必要な権限が付与されていることを確認してください。

## トラブルシューティング
-   権限エラーが発生した場合は、サービスアカウントに適切なロールが付与されているか確認してください。
-   APIエラーが発生した場合は、必要なAPIが有効化されているか確認してください。
