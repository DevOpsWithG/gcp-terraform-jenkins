terraform {
  backend "gcs" {
    bucket = "terraform-state-gkeautopilot-dev"
    prefix = "terraform/state/dev"
  }
}

module "vpc" {
  source = "../../modules/vpc"
  name   = var.vpc_name
  cidr   = var.vpc_cidr
  region = var.region
}

module "iam" {
  source     = "../../modules/iam"
  project_id = var.project_id
}

module "gke" {
  source     = "../../modules/gke-autopilot"
  project_id = var.project_id
##  credentials = file(var.credentials_file)
  name       = var.cluster_name
  location   = var.location
  network    = module.vpc.network_self_link
  subnetwork = module.vpc.subnet_self_link
}

output "cluster_name" { value = module.gke.name }
