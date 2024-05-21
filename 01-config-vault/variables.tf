variable "terraform_fqdn" {
  type    = string
  default = "https://app.terraform.io"
}

variable "vault_auth_path" {
  type    = string
  default = "terraform_jwt"
}

variable "vault_policy_name" {
  type    = string
  default = "terraform_dynamic_credentials"
}

variable "terraform_org_name" {
  type = string
}

variable "terraform_project_name" {
  type = string
}

variable "terraform_workspace_name" {
  type = string
}

variable "terraform_run_phase" {
  type = string
}