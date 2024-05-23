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
  region  = var.region
  profile = "default"
}

variable "region" {}
variable "bucket_name" {}

resource "aws_s3_bucket" "tutorial_bucket" {
  bucket = var.bucket_name
  tags = {
    Name        = "tutorial"
    Environment = "pipecd"
  }
}
