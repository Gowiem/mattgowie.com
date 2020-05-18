# main.tf

module "terraform_state_backend" {
  source    = "git::https://github.com/cloudposse/terraform-aws-tfstate-backend.git?ref=0.17.0"

  region    = var.region
  namespace = var.namespace
  stage     = var.stage
  name      = "terraform"
}