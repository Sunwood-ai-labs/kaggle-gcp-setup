# 既存のGoogle Cloudプロジェクトの参照
data "google_project" "project" {
  project_id = var.project_id
}
