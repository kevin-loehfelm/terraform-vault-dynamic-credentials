# terraform-vault-dynamic-credentials

Configure Vault and Terraform to support Terraform dynamic Vault credentials.

1. Configure Vault
- Enable and configure jwt auth method
- Create Vault Policy for Terraform permissions
- Create jwt auth role to assign Terraform permissions
2. Configure Terraform
- Create Project
- Create Variable Set
  - Create Variables
- Associate Variable Set to Project

Set the following environment variables:

Variable | Description |
---------|-------------|
VAULT_ADDR | Address of the HashiCorp Vault cluster |
VAULT_NAMESPACE | Target Vault Namespace |
VAULT_TOKEN | Vault token authorized to mount and configure auth methods and policies |
HCP_CLIENT_ID | Client ID for a service principal to configure Terraform Enterprise or HCP Terraform |
HCP_CLIENT_SECRET | Client Secret ID for a service principal to configure Terraform Enterprise or HCP Terraform |
