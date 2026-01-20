terraform {

  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "terraform"
}

resource "aws_s3_bucket" "project1_bucket" {
  bucket = var.bucket_name

  tags = {

    project     = "aws-portfolio-project-1"
    owner       = "abufo"
    Environment = "learning"
  }

}
