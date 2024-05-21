# Configure Vault
module "vault_config" {
  source = "./01-config-vault"

  terraform_org_name       = var.terraform_org_name
  terraform_project_name   = var.terraform_project_name
  terraform_workspace_name = var.terraform_workspace_name
  terraform_run_phase      = var.terraform_run_phase
}

# Configure Terraform
module "terraform_config" {
  source = "./02-config-terraform"

  terraform_org_name       = var.terraform_org_name
  terraform_project_name   = var.terraform_project_name
  terraform_workspace_name = var.terraform_workspace_name

  vault_run_role_name = module.vault_config.vault_run_role_name
  vault_auth_path     = module.vault_config.vault_auth_path
}