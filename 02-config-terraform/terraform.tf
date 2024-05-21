terraform {
  cloud {
    organization = "kloehfelm-demo"
    hostname     = "app.terraform.io"

    workspaces {
      project = "oidc_test"
      name    = "vault-configuration"
    }
  }
}