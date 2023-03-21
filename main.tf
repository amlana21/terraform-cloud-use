terraform {
  required_version = ">= 0.14"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 4.9.0"
    }

    tls = {
      source = "hashicorp/tls"
      version = "3.4.0"
    }
  }
}



provider "aws" {
  region = "us-east-1" 
}

resource "aws_s3_bucket" "bucket_for_demo" {
  bucket = "sample-bucket-test-1"
  acl    = "private"

  tags = {
    Name = "sample-bucket-test"
  }
}