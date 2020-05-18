# provider.tf

provider "aws" {
  region = var.region
  version = "~> 2.61"
}

terraform {
  required_version = ">= 0.12.2"

  backend "s3" {
    region         = "us-west-2"
    bucket         = "mp-mattgowie-website-test-terraform-state"
    key            = "terraform.tfstate"
    dynamodb_table = "mp-mattgowie-website-test-terraform-state-lock"
    encrypt        = "true"
  }
}

