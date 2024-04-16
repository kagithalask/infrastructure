terraform {
  backend "gcs" {
    bucket  = "stately-diagram-419107-test"
    prefix  = "terraform/state"
  }
}