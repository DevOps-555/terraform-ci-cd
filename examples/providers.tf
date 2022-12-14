terraform {
  # see https://releases.hashicorp.com/terraform/
  required_version = ">= 0.13.1"
  backend "gcs" {
    bucket = "terraform-state-bucket-001"
    prefix = "main"
  }
  required_providers {
    # see https://github.com/terraform-providers/terraform-provider-google/releases
    google = {
      source  = "hashicorp/google"
      version = "3.68.0" 
    }
  }
}

provider "google" {
  project = var.gcp_project_id
}
