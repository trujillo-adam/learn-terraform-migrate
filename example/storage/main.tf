terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.6.3"
    }
  }

  cloud {
    organization = "hashicorp-training"
    hostname     = "app.terraform.io"
    workspaces {
      project = "example_storage"
      name    = "example_storage_default"
    }
  }
}

resource "random_string" "this" {
  count  = var.string_count
  length = var.string_length
}