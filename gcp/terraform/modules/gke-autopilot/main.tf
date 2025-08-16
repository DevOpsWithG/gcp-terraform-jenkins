resource "google_container_cluster" "gke" {
  name     = var.name
  location = var.location            # Autopilot clusters are REGIONAL (e.g., asia-south1)

  network    = var.network
  subnetwork = var.subnetwork

  # Required for VPC-native (Autopilot uses this)
  networking_mode = "VPC_NATIVE"
  ip_allocation_policy {}

  release_channel {
    channel = var.release_channel    # "REGULAR", "RAPID", or "STABLE"
  }

  workload_identity_config {
    workload_pool = "${var.project_id}.svc.id.goog"
  }

  # Turn on Autopilot
  autopilot {
    enabled = true
  }

  # Logging/Monitoring defaults are fine; you can reduce costs later
}

output "endpoint"       { value = google_container_cluster.gke.endpoint }
output "name"           { value = google_container_cluster.gke.name }
output "ca_certificate" { value = google_container_cluster.gke.master_auth[0].cluster_ca_certificate }

variable "project_id"      { type = string }
variable "name"            { type = string }
variable "location"        { type = string }          # regional
variable "network"         { type = string }
variable "subnetwork"      { type = string }
variable "release_channel" { 
  type = string 
  default = "REGULAR"
}

