terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.8.0"
    }
  }
}

provider "google" {
  # Configuration options
  project     = "terraform-gcp-studies-01"
  region      = "southamerica-east1"
  zone        = "southamerica-east1-a"
  credentials = "../terraform-gcp-studies-01.json"
}

resource "google_storage_bucket" "GCS1" {
  name     = "bucket-from-tf-up-using-sa-robs"
  location = "SOUTHAMERICA-EAST1"
}
