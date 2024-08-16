terraform {
  required_version = ">= 1.2.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.14.0"
    }
  }


  backend "remote" {
    hostname = "app.terraform.io"
    organization = "devnerilus"
    workspaces {
      name = "lac-terraform-pipeline"
    }
  }
}
