# Here you can define any resources/providers to deploy.
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1" # [EDIT_HERE]
  profile = "default"
}

variable "bucket_name" {}

resource "aws_s3_bucket" "tutorial_bucket" {
  bucket = var.bucket_name
}
