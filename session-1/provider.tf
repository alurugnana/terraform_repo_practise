terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"  #aws provider version
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
}

