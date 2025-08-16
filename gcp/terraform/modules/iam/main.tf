resource "google_service_account" "automation" {
  account_id   = var.account_id
  display_name = "Automation SA"
}

resource "google_project_iam_member" "roles" {
  for_each = toset(var.roles)
  project  = var.project_id
  role     = each.value
  member   = "serviceAccount:${google_service_account.automation.email}"
}

output "email" { value = google_service_account.automation.email }

variable "project_id" { type = string }
variable "account_id" {
  type = string
  default = "cicd-automation"
}
variable "roles" {
  type = list(string)
  default = [
    "roles/compute.admin",
    "roles/container.admin",
    "roles/iam.serviceAccountUser",
    "roles/storage.admin",
    "roles/viewer"
  ]
}
