variable "project_id" {
  type = string
  description = "The ID of the project to create resources in"
}

variable "region" {
  type = string
  description = "The region to use"
}

variable "main_zone" {
  type = string
  description = "The zone to use as primary"
}

variable "cluster_node_zones" {
  type = list(string)
  description = "The zones where Kubernetes cluster worker nodes should be located"
}

variable "credentials_file_path" {
  type = string
  description = "The credentials JSON file used to authenticate with GCP"
}

variable "service_account" {
  type = string
  description = "The GCP service account"
}

variable "gcp_enabled_services" {
  description = "GCP services to be anabled"
  type        = list(string)
  default     = [
    
    "containerregistry.googleapis.com",
    "container.googleapis.com",
    "servicenetworking.googleapis.com",
    "iamcredentials.googleapis.com",
    "oslogin.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "compute.googleapis.com",
    "sqladmin.googleapis.com",
    "container.googleapis.com"
  ]
}
