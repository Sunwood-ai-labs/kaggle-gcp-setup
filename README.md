<div align="center">

![Image](https://github.com/user-attachments/assets/be4f446f-0754-4764-a97c-1aac63022dc0)

# 🌟 Kaggle用Google Cloud Terraformファイル

<img src="https://img.shields.io/badge/Terraform-v1.0+-blue.svg" alt="Terraform"/>
<img src="https://img.shields.io/badge/Google%20Cloud-brightgreen.svg" alt="Google Cloud"/>
<img src="https://img.shields.io/badge/GitHub-Repository-orange" alt="GitHub"/>

</div>

## 📚 概要
このリポジトリは、KaggleノートブックからGoogle Cloud SDKを効率的に利用するための環境を、Terraformを使用して自動構築するためのコードを提供します。

## 🗂️ ファイル構成
```
├── bucket.tf           # Cloud Storageバケットの定義
├── iam.tf             # IAMロールの設定
├── project.tf         # GCPプロジェクトの参照
├── providers.tf       # Terraformプロバイダーの設定
├── service_account.tf # サービスアカウントの定義
├── variables.tf       # 変数定義
└── terraform.tfvars   # 環境固有の設定値
```

## 🚀 セットアップ手順

### 前提条件
- Google Cloud SDKのインストール
- Terraformのインストール（v1.0以上）
- 有効なGoogleアカウントと課金の設定

### 1️⃣ 初期設定
1. Google Cloud SDKにログイン
```bash
gcloud auth login
```

2. リポジトリのクローン
```bash
git clone https://github.com/your-username/kaggle-gcp-setup.git
cd kaggle-gcp-setup
```

3. 環境変数の設定
```bash
cp terraform.tfvars.example terraform.tfvars
# terraform.tfvarsを編集して必要な値を設定
```

### 2️⃣ Terraformの実行
1. 初期化
```bash
terraform init
```

2. 実行計画の確認
```bash
terraform plan
```

3. リソースの作成
```bash
terraform apply
```

## ⚡ 主な機能
- GCPプロジェクトの設定
- サービスアカウントの作成と権限設定
- Cloud Storageバケットの作成
- 必要なIAMロールの設定

## 🔒 セキュリティ設定
- ユニフォームバケットレベルアクセス有効
- 最小権限の原則に基づくIAMロール設定
- サービスアカウントによる認証

## ⚠️ 注意事項
- プロジェクトIDは全体で一意である必要があります
- 課金アカウントが有効であることを確認してください
- 必要なAPIが有効化されていることを確認してください

## 🔧 トラブルシューティング
- **権限エラー**: サービスアカウントの権限を確認
- **API制限**: 必要なAPIの有効化状態を確認
- **バケット名の重複**: グローバルで一意な名前に変更

## 📖 参考リンク
- [Terraform公式ドキュメント](https://www.terraform.io/docs)
- [Google Cloud公式ドキュメント](https://cloud.google.com/docs)
- [Kaggleドキュメント](https://www.kaggle.com/docs)

## 📝 ライセンス
このプロジェクトはMITライセンスの下で公開されています。
