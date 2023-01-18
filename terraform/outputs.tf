# outputs.tf

################
## TF STATE  ##
##############

output "terraform_backend_config" {
  value = module.terraform_state_backend.terraform_backend_config
}

##############
## AMPLIFY ##
############

output "amplify_arn" {
  value = module.amplify.arn
}

output "amplify_default_domain" {
  value = module.amplify.default_domain
}

output "amplify_domain_association_arn" {
  value = module.amplify.domain_association_arn
}

output "amplify_custom_domains" {
  value = module.amplify.custom_domains
}

output "amplify_master_webhook_url" {
  value = module.amplify.master_webhook_url
}

output "amplify_develop_webhook_url" {
  value = module.amplify.develop_webhook_url
}