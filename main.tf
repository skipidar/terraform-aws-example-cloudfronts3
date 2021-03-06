terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = format("%s", var.aws_region)
}

provider "aws" {
  alias  = "useastone"
  region = "us-east-1"
}