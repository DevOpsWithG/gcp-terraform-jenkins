resource "google_compute_network" "vpc" {
  name                    = var.name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet" {
  name          = "${var.name}-subnet"
  ip_cidr_range = var.cidr
  region        = var.region
  network       = google_compute_network.vpc.id
}

output "network_self_link" { value = google_compute_network.vpc.self_link }
output "subnet_self_link"  { value = google_compute_subnetwork.subnet.self_link }

variable "name"  { type = string }
variable "cidr"  { type = string }
variable "region" { type = string }
