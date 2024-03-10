terraform {
  required_version = "~> 1.7"

  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.27"
    }
  }

  backend "local" {
    # This is a symlink
    path = "server.tfstate"
  }
}

provider "kubernetes" {
  config_paths = [
    "../../k3s.yaml",
    "../../k3s-endpoint.yaml",
  ]
  config_context = "default"
}
