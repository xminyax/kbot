module "gke_cluster" {
  source         = "github.com/xminyax/tf-google-gke-cluster"
  GOOGLE_REGION  = var.GOOGLE_REGION
  GOOGLE_PROJECT = var.GOOGLE_PROJECT
  GKE_NUM_NODES  = 2
}

terraform {
  backend "gcs" {
    bucket = "tf-kbot-testing"
    prefix = "terraform/state"
  }
}