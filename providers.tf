provider "aws" {
  region  = var.aws_region
  profile = "nwsmgmt"

  #   assume_role {
  #     role_arn = "arn:aws:iam::${var.accountId}:role/OrganizationAccountAccessRole"
  #   }
}

terraform {
  required_version = ">= 1.0.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    bucket         = "tf-state-mattn-a4l"
    key            = "terraform/general/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tf_locks"
    encrypt        = true
  }
}