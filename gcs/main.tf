resource "google_storage_bucket" "GCS1" {
  name          = "tf-course-bucker-from-terraform-robs"
  location      = "SOUTHAMERICA-EAST1"
  storage_class = "STANDARD"
  force_destroy = true
}
