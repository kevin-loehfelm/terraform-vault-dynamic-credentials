# Create Namespace
module "vault-namespace" {
  source  = "app.terraform.io/kloehfelm-demo/vault-namespace/vault"
  version = "0.0.5"

  path = "namespace5"
}

# Mount Secrets Engines
# Mount Auth Engines