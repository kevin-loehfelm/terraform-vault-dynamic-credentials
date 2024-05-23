locals {
  vault_addr      = data.external.this.result.VAULT_ADDR
  vault_namespace = data.external.this.result.VAULT_NAMESPACE
}