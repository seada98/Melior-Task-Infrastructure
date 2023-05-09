resource "google_service_account" "project-service-account" {
  account_id = "project-service-account"
  project = "melior-task"
}

resource "google_project_iam_binding" "project-service-account-iam" {
  project = "melior-task"
  role    = "roles/container.admin"
  members = [
  "serviceAccount:${google_service_account.project-service-account.email}"
  ]
}