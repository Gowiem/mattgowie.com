# outputs.tf

################
## TF STATE  ##
##############

output "terraform_backend_config" {
  value = module.terraform_state_backend.terraform_backend_config
}

