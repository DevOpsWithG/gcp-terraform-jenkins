variable "project_id" { type = string }
#variable "credentails_file" { type = string }
variable "region" {
  type    = string
  default = "us-central1"
}
variable "location" {
  type    = string
  default = "us-central1-a"
}
variable "vpc_name" {
  type    = string
  default = "main"
}
variable "vpc_cidr" {
  type    = string
  default = "10.10.0.0/16"
}
variable "cluster_name" {
  type    = string
  default = "autopilot-dev-cluster"
}
