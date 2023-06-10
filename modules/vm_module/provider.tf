terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.68.0"
    }
  }
}

provider "google" {
  # Configuration options
  credentials = "key.json"
  project     = "savvy-bay-387007"
  region      =  "us-central1"
}
