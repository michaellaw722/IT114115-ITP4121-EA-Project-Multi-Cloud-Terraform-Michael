terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.74.0"
    }
  }

  required_version = ">= 0.14"
}

provider "google" {
  credentials = file("****.json")
  project     = "tcb-project-371706"
  region      = "us-east1"
}
