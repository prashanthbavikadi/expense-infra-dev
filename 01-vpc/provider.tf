terraform {
  required_providers {
    aws ={
        source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    key = "amway-vpc"
    region = "us-east-1"
    bucket = "devops-30s"
    dynamodb_table = "devops1-dev"
    
  }
}


#provide authentication here
provider "aws" {
  region = "us-east-1"
}