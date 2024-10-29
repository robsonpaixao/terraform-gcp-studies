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
