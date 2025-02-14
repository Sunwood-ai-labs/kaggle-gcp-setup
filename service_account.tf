# サービスアカウント
resource "google_service_account" "service_account" {
  account_id   = var.service_account_id
  display_name = "Kaggle Service Account"
  project      = data.google_project.project.project_id
}
