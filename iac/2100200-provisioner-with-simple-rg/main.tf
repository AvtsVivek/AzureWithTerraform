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

# Your code goes here
# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.resource_group_location

  provisioner "local-exec" {
    when    = create
    command = "echo 'Hello from Terraform!'. Your resource group is created! ${self.name} at location ${self.location}"
  }

  provisioner "local-exec" {
    when    = create
    command = "echo 'Hello from Terraform!'. Your resource group is created! ${self.name} at location ${self.location} > provisioner-output.txt"
  }

  provisioner "local-exec" {
    when        = create
    command     = "Get-Date > provisioner-output.txt"
    interpreter = ["PowerShell", "-Command"]
  }

}