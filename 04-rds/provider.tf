terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 2.49.0"
    }
  }
  backend "s3" {
    bucket = "devops-30s"
    key    = "amway-dev-rds"
    region = "us-east-1"
    dynamodb_table = "devops1-dev"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}