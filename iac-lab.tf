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

