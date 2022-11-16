terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.27.0"
    }
  }
#configuring the s3 bucket
backend "s3" {
    bucket = "capestone-tf"
    key    = "capestone/terraform.tfstate"
    region = "us-east-1"
  }
}

#Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}