terraform {
  required_version = "~> 1.7"

  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.27"
    }
  }

  backend "s3" {
    bucket = "ralbus-tfstate"
    key    = "coreos-cluster"
    region = "us-east-1"
  }
}

provider "kubernetes" {
  config_paths = [
    "../../k3s.yaml",
    "../../k3s-endpoint.yaml",
  ]
  config_context = "default"
}
