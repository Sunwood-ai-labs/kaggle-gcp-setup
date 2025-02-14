# IAMロール
resource "google_project_iam_member" "storage_admin" {
  project = data.google_project.project.project_id
  role    = "roles/storage.admin"
  member  = "serviceAccount:${google_service_account.service_account.email}"
}

resource "google_project_iam_member" "storage_object_viewer" {
  project = data.google_project.project.project_id
  role    = "roles/storage.objectViewer"
  member  = "serviceAccount:${google_service_account.service_account.email}"
}

resource "google_project_iam_member" "storage_object_creator" {
  project = data.google_project.project.project_id
  role    = "roles/storage.objectCreator"
  member  = "serviceAccount:${google_service_account.service_account.email}"
}
