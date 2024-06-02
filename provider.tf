terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.18.1"
    }
  }
}

provider "aws" {
  region = var.aws_region
  access_key = "AKIAVRUVRYJVW4RS6GY2"
  secret_key = "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"
}