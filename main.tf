terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

# Google Cloudプロジェクト
resource "google_project" "project" {
  name            = var.project_name
  project_id      = var.project_id
  org_id          = var.org_id
  billing_account = var.billing_account
}

# サービスアカウント
resource "google_service_account" "service_account" {
  account_id   = var.service_account_id
  display_name = "Kaggle Service Account"
  project      = google_project.project.project_id
}

# IAMロール
resource "google_project_iam_member" "storage_admin" {
  project = google_project.project.project_id
  role    = "roles/storage.admin"
  member  = "serviceAccount:${google_service_account.service_account.email}"
}

resource "google_project_iam_member" "storage_object_viewer" {
  project = google_project.project.project_id
  role    = "roles/storage.objectViewer"
  member  = "serviceAccount:${google_service_account.service_account.email}"
}

resource "google_project_iam_member" "storage_object_creator" {
  project = google_project.project.project_id
  role    = "roles/storage.objectCreator"
  member  = "serviceAccount:${google_service_account.service_account.email}"
}

# Cloud Storageバケット
resource "google_storage_bucket" "bucket" {
  name                        = var.bucket_name
  location                    = var.region
  project                     = google_project.project.project_id
  uniform_bucket_level_access = true
}
