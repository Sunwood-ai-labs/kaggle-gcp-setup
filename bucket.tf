# Cloud Storageバケット
resource "google_storage_bucket" "bucket" {
  name                        = var.bucket_name
  location                    = var.region
  project                     = google_project.project.project_id
  uniform_bucket_level_access = true
}
