terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.67.0" 
    }
  }
}

# configure the AWS provider

provider "aws" {
  region =  "us-east-2"
}

terraform {
  backend "s3" {
    bucket = aws_s3_bucket.buck-1.id
    key    = "terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "terraform-locking"
    encrypt = true
  }
}