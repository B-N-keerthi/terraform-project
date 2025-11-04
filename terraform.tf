terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.19.0"
    }
  }
}

provider "aws" {
region = "ap-south-1"
}

module "s3_bucket" "s3_creation" {
source = "./modules/s3_bucket"
bucket_name = var.bucket_name
acl = var.acl
versioning_enabled = var.versioning_enabled
tags = var.tags
}