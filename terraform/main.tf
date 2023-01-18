# main.tf

module "terraform_state_backend" {
  source    = "git::https://github.com/cloudposse/terraform-aws-tfstate-backend.git?ref=0.17.0"

  region    = var.region
  namespace = var.namespace
  stage     = var.stage
  name      = "terraform"
}

module "amplify" {
  source = "../../../masterpoint/terraform-aws-amplify-app"

  namespace                    = var.namespace
  stage                        = var.stage
  name                         = "mattgowie"
  organization                 = "Gowiem"
  repo                         = "mattgowie.com"
  gh_access_token              = var.gh_access_token
  domain_name                  = "mattgowie.com"
  description                  = "The Personal site of Matt Gowie."
  enable_basic_auth_on_master  = false
  enable_basic_auth_on_develop = true
  basic_auth_username          = "gowiem"
  basic_auth_password          = "helloworld"
  develop_pull_request_preview = true

  custom_rules = [{
    source    = "https://www.mattgowie.com"
    target    = "https://mattgowie.com"
    status    = "301"
    condition = null
  }, {
    source    = "/<*>"
    target    = "/index.html"
    status    = "404"
    condition = null
  }]
}

