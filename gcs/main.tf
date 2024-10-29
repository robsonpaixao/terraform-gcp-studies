resource "google_storage_bucket" "GCS1" {
  name          = "tf-course-bucker-from-terraform-robs"
  location      = "SOUTHAMERICA-EAST1"
  storage_class = "NEARLINE"
  force_destroy = true

  labels = {
    "env" = "tf_env"
    "dep" = "complience"
  }

  uniform_bucket_level_access = true
}

resource "google_storage_bucket_object" "picture" {
  name   = "troll-face"
  bucket = google_storage_bucket.GCS1.name
  source = "troll-face.webp"
}

resource "google_storage_bucket_iam_binding" "bucket_object_viewer" {
  bucket = google_storage_bucket.GCS1.name
  role   = "roles/storage.objectViewer"
  members = [
    "user:robson.emanuelpx@gmail.com"
  ]
}

