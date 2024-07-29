terraform {
  required_version = ">= 1.9.0"
  backend "s3" {
    region = var.AWS_REGION
    # dynamodb_table = "terraform-state-locking"
    encrypt = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.55.0"
    }
  }
}

provider "aws" {
  region = var.AWS_REGION
  default_tags {
    tags = {
      env       = var.ENV
      terraform = "true"
    }
  }
}