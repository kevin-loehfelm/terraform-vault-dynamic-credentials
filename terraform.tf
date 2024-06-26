terraform {
  required_providers {
    vault = {
      version = ">= 4.2.0" # May 20, 2024
      source  = "hashicorp/vault"
    }
    tfe = {
      version = ">= 0.55.0" # May 21, 2024
    }
    external = {
      version = ">= 2.3.3" # May 23, 2024
    }
  }
}