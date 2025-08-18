terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.48.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
  credentials = file(var.credentails_file)
}

#variable "project_id" { type = string }
#variable "region"     { type = string  default = "us-central1" }
