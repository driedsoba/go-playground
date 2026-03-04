terraform {
  backend "s3" {
    bucket = "tfplayground-tf-state"
    key    = "dev/terraform.tfstate"
    region = "ap-southeast-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.34.0"
    }
  }
}