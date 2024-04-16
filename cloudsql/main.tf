# modules/cloudsql/main.tf

variable "project_id" {}
variable "region" {}
# variable "database_instance_name" {}
variable "network_name" {}
variable "subnet_name" {}


resource "google_sql_database_instance" "instance" {
  name             = var.database_instance_name
  region           = var.region
  database_version = "MYSQL_5_7"

  settings {
    tier = "db-f1-micro"
  }

  depends_on = [google_project_service.sqladmin]
}

resource "google_project_service" "sqladmin" {
  project = var.project_id
  service = "sqladmin.googleapis.com"
}

resource "google_sql_database" "db" {
  name     = "example-db"
  instance = google_sql_database_instance.instance.name
}

output "instance_name" {
  value = google_sql_database_instance.instance.name
}
