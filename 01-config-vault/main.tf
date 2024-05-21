resource "vault_jwt_auth_backend" "this" {
  description        = "Terraform JWT auth for dynamic credentials"
  path               = var.vault_auth_path
  oidc_discovery_url = var.terraform_fqdn
  bound_issuer       = var.terraform_fqdn
}

# vault policy
resource "vault_policy" "this" {
  name = var.vault_policy_name

  policy = file("${path.module}/terraform_permissions.policy")
}

# vault jwt auth role
resource "vault_jwt_auth_backend_role" "this" {
  backend   = vault_jwt_auth_backend.this.path
  role_name = "terraform_admin"
  token_policies = [
    "default",
    vault_policy.this.name
  ]

  bound_audiences   = ["vault.workload.identity"]
  bound_claims_type = "glob"
  bound_claims = {
    sub = "organization:${var.terraform_org_name}:project:${var.terraform_project_name}:workspace:${var.terraform_workspace_name}:run_phase:${var.terraform_run_phase}"
  }
  user_claim = "terraform_full_workspace"
  role_type  = "jwt"
  token_ttl  = "300" # 5 minutes
}