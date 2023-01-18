# variables.tf

variable "namespace" {
  type        = string
  description = "Namespace, which could be your organization name or abbreviation, e.g. 'eg' or 'cp'"
}

variable "stage" {
  type        = string
  description = "Stage, e.g. 'prod', 'staging', 'dev', OR 'source', 'build', 'test', 'deploy', 'release'"
}

variable "region" {
  type        = string
  description = "The AWS region infrastructure should reside in."
}

variable "gh_access_token" {
  type = string
  description = "The GH access token to allow creating the webhook and access to GH repo."
}