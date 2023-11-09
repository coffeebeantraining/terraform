terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.1.0"
    }
  }
}

provider "local" {}

resource "local_file" "test" {
  content  = "Hello, Terraform!"
  filename = "${path.module}/test.txt"
}