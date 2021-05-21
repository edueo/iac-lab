terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region                  = "us-east-1"
  shared_credentials_file = "/home/eduardo/.aws/credentials"
  profile                 = "iaclab"
}

# Create a VPC
resource "aws_vpc" "vpc_iaclab" {
  cidr_block = "10.0.0.0/16"
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket
resource "aws_s3_bucket" "b" {
  bucket = "meu-bucket-criado-com-tf"
  acl    = "private"

  tags = {
    Name        = "Meu bucket provisionado com Terraform"
    Environment = "Dev"
  }
}
