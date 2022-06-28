# Terraform settings Block

# Terraform settings Block
terraform {
  required_version = ">=1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm" # https://registry.terraform.io/providers/hashicorp/azurerm/latest
      version = "~>3.0"
      # version = "2.85.0"
    }
  }
}

provider "azurerm" {
  features {
  }

  #  subscription_id   = ${env.ARM_SUBSCRIPTION_ID}
  #  tenant_id         = ${env.ARM_TENANT_ID}
  #  client_id         = ${env.ARM_CLIENT_ID}
  #  client_secret     = ${env.ARM_CLIENT_SECRET}

}

variable "SomeVariable" {
  type = string
}

output "SomeOutputVar" {
  value = var.SomeVariable
}

