terraform {
  required_version = ">= 1.6.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 5.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
  #  credentials = file(var.credentials_file)
}

#variable "project_id" { type = string }
#variable "region"     { type = string  default = "us-central1" }
