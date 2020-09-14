terraform {
  backend "gcs" {
    bucket = "tf-state-gcp-batch-ingestion"
    region = "us-central1"
    prefix = "terraform/state"
  }
}

provider "google" {
  project = "ind-coe"
  region = "us-central1"
}

resource "google_storage_bucket" "funky-bucket" {
  name = "pipeline123"
  storage_class = "REGIONAL"
  location  = "us-central1"
}
