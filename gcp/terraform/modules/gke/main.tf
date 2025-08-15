resource "google_container_cluster" "gke" {
  name     = var.name
  location = var.location
  network    = var.network
  subnetwork = var.subnetwork

  remove_default_node_pool = true
  initial_node_count       = 1

  workload_identity_config {
    workload_pool = "${var.project_id}.svc.id.goog"
  }
}

resource "google_container_node_pool" "primary" {
  name       = "${var.name}-pool"
  location   = var.location
  cluster    = google_container_cluster.gke.name
  node_count = var.node_count

  node_config {
    machine_type = var.machine_type
    oauth_scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }
}

output "endpoint"      { value = google_container_cluster.gke.endpoint }
output "name"          { value = google_container_cluster.gke.name }
output "ca_certificate"{ value = google_container_cluster.gke.master_auth[0].cluster_ca_certificate }

variable "project_id" { type = string }
variable "name"       { type = string }
variable "location"   { type = string }
variable "network"    { type = string }
variable "subnetwork" { type = string }
variable "node_count" { type = number default = 2 }
variable "machine_type" { type = string default = "e2-standard-2" }
