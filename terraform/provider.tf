# provider.tf

provider "aws" {
  region = var.region
  version = "~> 2.61"
}

terraform {
  required_version = ">= 0.12.2"

  backend "s3" {
    region         = "us-west-2"
    bucket         = "gow-prod-terraform-state"
    key            = "terraform.tfstate"
    dynamodb_table = "gow-prod-terraform-state-lock"
    encrypt        = "true"
  }
}

