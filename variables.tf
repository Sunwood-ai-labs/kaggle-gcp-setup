variable "project_name" {
  type        = string
  description = "Google Cloudプロジェクトの名前"
}

variable "project_id" {
  type        = string
  description = "Google CloudプロジェクトのID"
}

variable "org_id" {
  type        = string
  description = "Google Cloud組織のID"
  default     = ""
}

variable "billing_account" {
  type        = string
  description = "Google Cloud課金アカウント"
}

variable "region" {
  type        = string
  description = "Google Cloudリージョン"
  default     = "us-central1"
}

variable "service_account_id" {
  type        = string
  description = "サービスアカウントのID"
}

variable "bucket_name" {
  type        = string
  description = "Cloud Storageバケットの名前"
}
