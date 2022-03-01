terraform {
  required_version = "1.0.11"
#  backend "s3" {
#  }
   required_providers {
    aws = {
      version = ">= 3.29.1"
      source = "hashicorp/aws"
    }
    template = {
        version = "2.1.2"
      }
      null = {
        version = "2.1.2"
      }
    }
}

provider "aws" {
  region  = var.aws_region
}


resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "tf-example"
  }
}
